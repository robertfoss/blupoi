/* Copyright (c) Nordic Semiconductor. All Rights Reserved.
 *
 * The information contained herein is property of Nordic Semiconductor ASA.
 * Terms and conditions of usage are described in detail in NORDIC
 * SEMICONDUCTOR STANDARD SOFTWARE LICENSE AGREEMENT.
 *
 * Licensees are granted free, non-transferable use of the information. NO
 * WARRANTY of ANY KIND is provided. This heading must NOT be removed from
 * the file.
 *
 */
/**
 * @file
 * @brief Atomic FIFO internal file
 *
 * This file should be included only by app_atfifo internally.
 * Needs app_atfifo.h included first.
 */
#ifndef APP_ATFIFO_H__
#error This is internal file. Do not include this file in your program.
#endif

#ifndef APP_ATFIFO_INTERNAL_H__
#define APP_ATFIFO_INTERNAL_H__
#include <stddef.h>
#include "nrf.h"
#include "app_util.h"
#include "nordic_common.h"

#if ((__CORTEX_M >= 0x03U) || (__CORTEX_SC >= 300U)) == 0
#error Unsupported core version
#endif

/*
 * Make sure that rd and wr pos in a tag are aligned like expected
 * Changing this would require changes inside assembly code!
 */
STATIC_ASSERT(offsetof(nrf_atfifo_postag_pos_t, wr) == 0);
STATIC_ASSERT(offsetof(nrf_atfifo_postag_pos_t, rd) == 2);

/**
 * @brief Atomically reserve space for new write
 *
 * @param[in,out] p_fifo   FIFO object.
 * @param[out]    old_tail Tail position tag before new space was reserved
 *
 * @retval true  Space available
 * @retval false Memory full
 *
 * @sa app_atfifo_wspace_close
 */
static bool app_atfifo_wspace_req(app_atfifo_t * const p_fifo, nrf_atfifo_postag_t * const p_old_tail);

/**
 * @brief Atomically mark all written data available
 *
 * This function marks all data available for reading.
 * This marking is done by copying tail.pos.wr into tail.pos.rd.
 *
 * It has to be called only when closing the first write.
 * It cannot be called if some write access was interrupted.
 * See the code below:
 * @code
 *  if(old_tail.pos.wr == old_tail.pos.rd)
 *  {
 *      app_atfifo_wspace_close(my_fifo);
 *      return true;
 *  }
 *  return false;
 * @endcode
 *
 * @param[in,out] p_fifo     FIFO object.
 *
 * @sa app_atfifo_wspace_req
 */
static void app_atfifo_wspace_close(app_atfifo_t * const p_fifo);

/**
 * @brief Atomically get part of the buffer to read data
 *
 * @param[in,out] p_fifo   FIFO object.
 * @param[out]    old_head Head position tag before data buffer was read
 *
 * @retval true  Data available for reading
 * @retval false No data in the buffer
 *
 * @sa app_atfifo_rspace_close
 */
static bool app_atfifo_rspace_req(app_atfifo_t * const p_fifo, nrf_atfifo_postag_t * const p_old_head);

/**
 * @brief Atomically release all read data
 *
 * This function marks all data that was actually read as free space,
 * available for writing.
 * This marking is done by copying head.pos.rd into head.pos.wr.
 *
 * It has to be called only when closing the first read.
 * It cannot be called when current read access interrupted some other read access.
 * See code below:
 * @code
 * if(old_head.pos.wr == old_head.pos.rd)
 *  {
 *      app_atfifo_rspace_close(my_fifo);
 *      return true;
 *  }
 *  return false;
 * @endcode
 *
 * @param[in,out] p_fifo     FIFO object.
 *
 * @sa app_atfifo_rspace_req
 */
static void app_atfifo_rspace_close(app_atfifo_t * const p_fifo);

/**
 * @brief Safely clear the FIFO, internal function
 *
 * This function realizes the functionality required by @ref app_atfifo_clear.
 *
 * @param[in,out] p_fifo     FIFO object.
 *
 * @retval true  All the data was released
 * @retval false All the data available for releasing was released, but there is some pending transfer.
 */
static bool app_atfifo_space_clear(app_atfifo_t * const p_fifo);


/* ---------------------------------------------------------------------------
 * Implementation starts here
 */

#if defined ( __CC_ARM )


__ASM bool app_atfifo_wspace_req(app_atfifo_t * const p_fifo, nrf_atfifo_postag_t * const p_old_tail)
{
    /* Registry usage:
     * R0 - p_fifo
     * R1 - p_old_tail
     * R2 - internal variable old_tail (saved by caller)
     * R3 - internal variable new_tail (saved by caller)
     * R4 - internal temporary register (saved by this function)
     * R5 - not used stored to keep the stack aligned to 8 bytes
     * Returned value:
     * R0 (bool - 32 bits)
     */
    push {r4, r5}
app_atfifo_wspace_req_repeat
    /* Load tail tag and set memory monitor !!! R2 - old tail !!! */
    ldrex r2, [r0, #__cpp(offsetof(app_atfifo_t, tail))]
    /* Extract write position !!! R3 !!! */
    uxth r3, r2
    /* Increment address with overload support !!! R4 used temporary !!! */
    ldrh  r4, [r0, #__cpp(offsetof(app_atfifo_t, item_size))]
    add   r3, r4
    ldrh  r4, [r0, #__cpp(offsetof(app_atfifo_t, buf_size))]
    cmp   r3, r4
    it    hs
    subhs r3, r3, r4

    /* Check if FIFO would overload after making this increment !!! R4 used temporary !!! */
    ldrh  r4, [r0, #__cpp(offsetof(app_atfifo_t, head) + offsetof(nrf_atfifo_postag_pos_t, wr))]
    cmp   r3, r4
    ittt  eq
    clrexeq
    moveq r0, #__cpp(false)
    beq   app_atfifo_wspace_req_exit

    /* Pack everything back !!! R3 - new tail !!! */
    /* Copy lower byte from new_tail, and higher byte is a value from the top of old_tail */
    pkhbt r3, r3, r2

    /* Store new value clearing memory monitor !!! R4 used temporary !!! */
    strex r4, r3, [r0, #__cpp(offsetof(app_atfifo_t, tail))]
    cmp   r4, #0
    bne   app_atfifo_wspace_req_repeat

    /* Return true */
    mov r0, #__cpp(true)
app_atfifo_wspace_req_exit
    /* Save old tail */
    str r2, [r1]
    pop {r4, r5}
    bx  lr
}


__ASM void app_atfifo_wspace_close(app_atfifo_t * const p_fifo)
{
    /* Registry usage:
     * R0 - p_fifo
     * R1 - internal temporary register
     * R2 - new_tail
     */
app_atfifo_wspace_close_repeat
    ldrex r2, [r0, #__cpp(offsetof(app_atfifo_t, tail))]
    /* Copy from lower byte to higher  */
    pkhbt r2, r2, r2, lsl #16

    strex r1, r2, [r0, #__cpp(offsetof(app_atfifo_t, tail))]
    cmp   r1, #0
    bne   app_atfifo_wspace_close_repeat
    bx    lr
}


__ASM bool app_atfifo_rspace_req(app_atfifo_t * const p_fifo, nrf_atfifo_postag_t * const p_old_head)
{
    /* Registry usage:
     * R0 - p_fifo
     * R1 - p_old_head
     * R2 - internal variable old_head (saved by caller)
     * R3 - internal variable new_head (saved by caller)
     * R4 - internal temporary register (saved by this function)
     * R5 - not used stored to keep the stack aligned to 8 bytes
     * Returned value:
     * R0 (bool - 32 bits)
     */
    push {r4, r5}
app_atfifo_rspace_req_repeat
    /* Load tail tag and set memory monitor !!! R2 - old tail !!! */
    ldrex r2, [r0, #__cpp(offsetof(app_atfifo_t, head))]
    /* Extract read position !!! R3 !!! */
    uxth r3, r2, ror #16

    /* Check if we have any data !!! R4 used temporary !!! */
    ldrh  r4, [r0, #__cpp(offsetof(app_atfifo_t, tail) + offsetof(nrf_atfifo_postag_pos_t, rd))]
    cmp   r3, r4
    ittt  eq
    clrexeq
    moveq r0, #__cpp(false)
    beq   app_atfifo_rspace_req_exit

    /* Increment address with overload support !!! R4 used temporary !!! */
    ldrh  r4, [r0, #__cpp(offsetof(app_atfifo_t, item_size))]
    add   r3, r4
    ldrh  r4, [r0, #__cpp(offsetof(app_atfifo_t, buf_size))]
    cmp   r3, r4
    it    hs
    subhs r3, r3, r4

    /* Pack everything back !!! R3 - new tail !!! */
    /* Copy lower byte from old_head, and higher byte is a value from write_pos */
    pkhbt r3, r2, r3, lsl #16

    /* Store new value clearing memory monitor !!! R4 used temporary !!! */
    strex r4, r3, [r0, #__cpp(offsetof(app_atfifo_t, head))]
    cmp   r4, #0
    bne   app_atfifo_rspace_req_repeat

    /* Return true */
    mov r0, #__cpp(true)
app_atfifo_rspace_req_exit
    /* Save old head */
    str r2, [r1]
    pop {r4, r5}
    bx  lr
}


__ASM void app_atfifo_rspace_close(app_atfifo_t * const p_fifo)
{
    /* Registry usage:
     * R0 - p_fifo
     * R1 - internal temporary register
     * R2 - new_tail
     */
app_atfifo_rspace_close_repeat
    ldrex r2, [r0, #__cpp(offsetof(app_atfifo_t, head))]
    /* Copy from higher byte to lower */
    pkhtb r2, r2, r2, asr #16

    strex r1, r2, [r0, #__cpp(offsetof(app_atfifo_t, head))]
    cmp   r1, #0
    bne   app_atfifo_rspace_close_repeat
    bx    lr
}


__ASM bool app_atfifo_space_clear(app_atfifo_t * const p_fifo)
{
    /* Registry usage:
     * R0 - p_fifo as input, bool output after
     * R1 - tail, rd pointer, new_head
     * R2 - head_old, destroyed when creating new_head
     * R3 - p_fifo - copy
     */
    mov     r3, r0
app_atfifo_space_clear_repeat
    /* Load old head in !!! R2 register !!! and read pointer of tail in !!! R1 register !!! */
    ldrex   r2, [r3, #__cpp(offsetof(app_atfifo_t, head))]
    ldrh    r1, [r3, #__cpp(offsetof(app_atfifo_t, tail) + offsetof(nrf_atfifo_postag_pos_t, rd))]
    cmp     r2, r2, ror #16
    /* Return false as default */
    mov     r0, #__cpp(false)
    /* Create new head in !!! R1 register !!! Data in !!! R2 register broken !!! */
    itett   ne
    uxthne  r2, r2
    orreq   r1, r1, r1, lsl #16
    orrne   r1, r2, r1, lsl #16

    /* Skip header test */
    bne     app_atfifo_space_clear_head_test_skip

    /* Load whole tail and test it !!! R2 used !!! */
    ldr     r2, [r3, #__cpp(offsetof(app_atfifo_t, tail))]
    cmp     r2, r2, ror #16
    /* Return true if equal */
    it      eq
    moveq   r0, #__cpp(true)

app_atfifo_space_clear_head_test_skip
    /* Store and test if success !!! R2 used temporary !!! */
    strex   r2, r1, [r3, #__cpp(offsetof(app_atfifo_t, head))]
    cmp     r2, #0
    bne     app_atfifo_space_clear_repeat
    bx      lr
}

#elif defined ( __ICCARM__ ) || defined ( __GNUC__ )

bool app_atfifo_wspace_req(app_atfifo_t * const p_fifo, nrf_atfifo_postag_t * const p_old_tail)
{
    volatile bool ret;
    volatile uint32_t old_tail;
    uint32_t new_tail;
    uint32_t temp;

    __ASM volatile(
        /* For more comments see Keil version above */
        "1:                                                             \n"
        "   ldrex %[old_tail], [%[p_fifo], %[offset_tail]]              \n"
        "   uxth %[new_tail], %[old_tail]                               \n"
        "                                                               \n"
        "   ldrh  %[temp], [%[p_fifo], %[offset_item_size]]             \n"
        "   add   %[new_tail], %[temp]                                  \n"
        "   ldrh  %[temp], [%[p_fifo], %[offset_buf_size]]              \n"
        "   cmp   %[new_tail], %[temp]                                  \n"
        "   it    hs                                                    \n"
        "   subhs %[new_tail], %[new_tail], %[temp]                     \n"
        "                                                               \n"
        "   ldrh  %[temp], [%[p_fifo], %[offset_head_wr]]               \n"
        "   cmp   %[new_tail], %[temp]                                  \n"
        "   ittt  eq                                                    \n"
        "   clrexeq                                                     \n"
        "   moveq %[ret], %[false_val]                                  \n"
        "   beq.n 2f                                                    \n"
        "                                                               \n"
        "   pkhbt %[new_tail], %[new_tail], %[old_tail]                 \n"
        "                                                               \n"
        "   strex %[temp], %[new_tail], [%[p_fifo], %[offset_tail]]     \n"
        "   cmp   %[temp], #0                                           \n"
        "   bne.n 1b                                                    \n"
        "                                                               \n"
        "   mov %[ret], %[true_val]                                     \n"
        "2:                                                             \n"
        : /* Output operands */
            [ret]     "=r"(ret),
            [temp]    "=&r"(temp),
            [old_tail]"=&r"(old_tail),
            [new_tail]"=&r"(new_tail)
        : /* Input operands */
            [p_fifo]          "r"(p_fifo),
            [offset_tail]     "J"(offsetof(app_atfifo_t, tail)),
            [offset_head_wr]  "J"(offsetof(app_atfifo_t, head) + offsetof(nrf_atfifo_postag_pos_t, wr)),
            [offset_item_size]"J"(offsetof(app_atfifo_t, item_size)),
            [offset_buf_size] "J"(offsetof(app_atfifo_t, buf_size)),
            [true_val]        "I"(true),
            [false_val]       "I"(false)
        : /* Clobbers */
            "cc");

    p_old_tail->tag = old_tail;
    UNUSED_VARIABLE(new_tail);
    UNUSED_VARIABLE(temp);
    return ret;
}


void app_atfifo_wspace_close(app_atfifo_t * const p_fifo)
{
    uint32_t temp;
    uint32_t new_tail;

    __ASM volatile(
        /* For more comments see Keil version above */
        "1:                                                         \n"
        "   ldrex %[new_tail], [%[p_fifo], %[offset_tail]]          \n"
        "   pkhbt %[new_tail],%[new_tail], %[new_tail], lsl #16     \n"
        "                                                           \n"
        "   strex %[temp], %[new_tail], [%[p_fifo], %[offset_tail]] \n"
        "   cmp   %[temp], #0                                       \n"
        "   bne.n 1b                                                \n"
        : /* Output operands */
            [temp]     "=&r"(temp),
            [new_tail] "=&r"(new_tail)
        : /* Input operands */
            [p_fifo]      "r"(p_fifo),
            [offset_tail] "J"(offsetof(app_atfifo_t, tail))
        : /* Clobbers */
            "cc");

    UNUSED_VARIABLE(temp);
    UNUSED_VARIABLE(new_tail);
}


bool app_atfifo_rspace_req(app_atfifo_t * const p_fifo, nrf_atfifo_postag_t * const p_old_head)
{
    volatile bool ret;
    volatile uint32_t old_head;
    uint32_t new_head;
    uint32_t temp;

    __ASM volatile(
        /* For more comments see Keil version above */
        "1:                                                         \n"
        "   ldrex %[old_head], [%[p_fifo], %[offset_head]]          \n"
        "   uxth %[new_head], %[old_head], ror #16                  \n"
        "                                                           \n"
        "   ldrh  %[temp], [%[p_fifo], %[offset_tail_rd]]           \n"
        "   cmp   %[new_head], %[temp]                              \n"
        "   ittt  eq                                                \n"
        "   clrexeq                                                 \n"
        "   moveq %[ret], %[false_val]                              \n"
        "   beq.n   2f                                              \n"
        "                                                           \n"
        "   ldrh  %[temp], [%[p_fifo], %[offset_item_size]]         \n"
        "   add   %[new_head], %[temp]                              \n"
        "   ldrh  %[temp], [%[p_fifo], %[offset_buf_size]]          \n"
        "   cmp   %[new_head], %[temp]                              \n"
        "   it    hs                                                \n"
        "   subhs %[new_head], %[new_head], %[temp]                 \n"
        "                                                           \n"
        "   pkhbt %[new_head], %[old_head], %[new_head], lsl #16    \n"
        "                                                           \n"
        "   strex %[temp], %[new_head], [%[p_fifo], %[offset_head]] \n"
        "   cmp   %[temp], #0                                       \n"
        "   bne.n 1b                                                \n"
        "                                                           \n"
        "   mov %[ret], %[true_val]                                 \n"
        "2:                                                         \n"
        : /* Output operands */
            [ret]     "=r"(ret),
            [temp]    "=&r"(temp),
            [old_head]"=&r"(old_head),
            [new_head]"=&r"(new_head)
        : /* Input operands */
            [p_fifo]          "r"(p_fifo),
            [offset_head]     "J"(offsetof(app_atfifo_t, head)),
            [offset_tail_rd]  "J"(offsetof(app_atfifo_t, tail) + offsetof(nrf_atfifo_postag_pos_t, rd)),
            [offset_item_size]"J"(offsetof(app_atfifo_t, item_size)),
            [offset_buf_size] "J"(offsetof(app_atfifo_t, buf_size)),
            [true_val]        "I"(true),
            [false_val]       "I"(false)
        : /* Clobbers */
            "cc");

    p_old_head->tag = old_head;
    UNUSED_VARIABLE(new_head);
    UNUSED_VARIABLE(temp);
    return ret;
}


void app_atfifo_rspace_close(app_atfifo_t * const p_fifo)
{
    uint32_t temp;
    uint32_t new_head;

    __ASM volatile(
        /* For more comments see Keil version above */
        "1:                                                         \n"
        "   ldrex %[new_head], [%[p_fifo], %[offset_head]]          \n"
        "   pkhtb %[new_head],%[new_head], %[new_head], asr #16     \n"
        "                                                           \n"
        "   strex %[temp], %[new_head], [%[p_fifo], %[offset_head]] \n"
        "   cmp   %[temp], #0                                       \n"
        "   bne.n 1b                                                \n"
        : /* Output operands */
            [temp]     "=&r"(temp),
            [new_head] "=&r"(new_head)
        : /* Input operands */
            [p_fifo]      "r"(p_fifo),
            [offset_head] "J"(offsetof(app_atfifo_t, head))
        : /* Clobbers */
            "cc");

    UNUSED_VARIABLE(temp);
    UNUSED_VARIABLE(new_head);
}


bool app_atfifo_space_clear(app_atfifo_t * const p_fifo)
{
    volatile bool ret;
    uint32_t old_head; /* This variable is left broken after assembly code finishes */
    uint32_t new_head;

    __ASM volatile(
        "1:                                                               \n"
        "   ldrex   %[old_head], [%[p_fifo], %[offset_head]]              \n"
        "   ldrh    %[new_head], [%[p_fifo], %[offset_tail_rd]]           \n"
        "   cmp     %[old_head], %[old_head], ror #16                     \n"
        "                                                                 \n"
        "   mov     %[ret], %[false_val]                                  \n"
        "                                                                 \n"
        "   itett   ne                                                    \n"
        "   uxthne  %[old_head], %[old_head]                              \n"
        "   orreq   %[new_head], %[new_head], %[new_head], lsl #16        \n"
        "   orrne   %[new_head], %[old_head], %[new_head], lsl #16        \n"
        "                                                                 \n"
        "   bne.n   2f                                                    \n"
        "                                                                 \n"
        "   ldr     %[old_head], [%[p_fifo], %[offset_tail]]              \n"
        "   cmp     %[old_head], %[old_head], ror #16                     \n"
        "   it      eq                                                    \n"
        "   moveq   %[ret], %[true_val]                                   \n"
        "                                                                 \n"
        "2:                                                               \n"
        "   strex   %[old_head], %[new_head], [%[p_fifo], %[offset_head]] \n"
        "   cmp     %[old_head], #0                                       \n"
        "   bne.n     1b                                                  \n"
        : /* Output operands */
            [ret]      "=&r"(ret),
            [old_head] "=&r"(old_head),
            [new_head] "=&r"(new_head)
        : /* Input operands */
            [p_fifo]         "r"(p_fifo),
            [offset_head]    "J"(offsetof(app_atfifo_t, head)),
            [offset_tail]    "J"(offsetof(app_atfifo_t, tail)),
            [offset_tail_rd] "J"(offsetof(app_atfifo_t, tail) + offsetof(nrf_atfifo_postag_pos_t, rd)),
            [true_val]       "I"(true),
            [false_val]      "I"(false)
        : /* Clobbers */
            "cc");

    UNUSED_VARIABLE(old_head);
    UNUSED_VARIABLE(new_head);
    return ret;
}

#else
#error Unsupported compiler
#endif

#endif /* APP_ATFIFO_INTERNAL_H__ */

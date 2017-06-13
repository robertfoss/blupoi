/* Copyright (c) 2016 Nordic Semiconductor. All Rights Reserved.
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
  * @defgroup nrf_balloc Block memory allocator
  * @{
  * @ingroup app_common
  * @brief This module handles block memory allocator features.
  */


#ifndef NRF_BALLOC_H__
#define NRF_BALLOC_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "sdk_errors.h"
#include "sdk_config.h"
#include "app_util_platform.h"

/**@defgroup NRF_BALLOC_DEBUG Macros for preparing debug flags for block allocator module.
 * @{ */
#define NRF_BALLOC_DEBUG_HEAD_GUARD_WORDS_SET(words)        (((words) & 0xFF) << 0)
#define NRF_BALLOC_DEBUG_HEAD_GUARD_WORDS_GET(flags)        (((flags) >> 0) & 0xFF)
#define NRF_BALLOC_DEBUG_TAIL_GUARD_WORDS_SET(words)        (((words) & 0xFF) << 8)
#define NRF_BALLOC_DEBUG_TAIL_GUARD_WORDS_GET(flags)        (((flags) >> 8) & 0xFF)

#define NRF_BALLOC_DEBUG_BASIC_CHECKS_SET(enable)           (!!(enable) << 16)
#define NRF_BALLOC_DEBUG_BASIC_CHECKS_GET(flags)            (flags & (1 << 16))
#define NRF_BALLOC_DEBUG_DOUBLE_FREE_CHECK_SET(enable)      (!!(enable) << 17)
#define NRF_BALLOC_DEBUG_DOUBLE_FREE_CHECK_GET(flags)       (flags & (1 << 17))
#define NRF_BALLOC_DEBUG_DATA_TRASHING_CHECK_SET(enable)    (!!(enable) << 18)
#define NRF_BALLOC_DEBUG_DATA_TRASHING_CHECK_GET(flags)     (flags & (1 << 18))
/**@} */

/**@brief Default debug flags for @ref nrf_balloc. This is used by the @ref NRF_BALLOC_DEF macro.
 *        Flags can be changed in @ref sdk_config.
 */
#if NRF_BALLOC_CONFIG_DEBUG_ENABLED
    #define NRF_BALLOC_DEFAULT_DEBUG_FLAGS                                                      \
    (                                                                                           \
        NRF_BALLOC_DEBUG_HEAD_GUARD_WORDS_SET(NRF_BALLOC_CONFIG_HEAD_GUARD_WORDS)           |   \
        NRF_BALLOC_DEBUG_TAIL_GUARD_WORDS_SET(NRF_BALLOC_CONFIG_TAIL_WORDS)                 |   \
        NRF_BALLOC_DEBUG_BASIC_CHECKS_SET(NRF_BALLOC_CONFIG_BASIC_CHECKS_ENABLED)           |   \
        NRF_BALLOC_DEBUG_DOUBLE_FREE_CHECK_SET(NRF_BALLOC_CONFIG_DOUBLE_FREE_CHECK_ENABLED) |   \
        NRF_BALLOC_DEBUG_DATA_TRASHING_CHECK_SET(NRF_BALLOC_CONFIG_DATA_TRASHING_CHECK_ENABLED) \
    )
#else
    #define NRF_BALLOC_DEFAULT_DEBUG_FLAGS   0
#endif // NRF_BALLOC_CONFIG_DEBUG_ENABLED

/**@brief Block memory allocator control block.*/
typedef struct
{
    uint8_t * p_stack_pointer;          //!< Current allocation stack pointer.
    uint8_t   max_utilization;          //!< Maximum utilization of the memory pool.
} nrf_balloc_cb_t;

/**@brief Block memory allocator pool instance. The pool is made of elements of the same size. */
typedef struct
{
    nrf_balloc_cb_t * p_cb;             //!< Pointer to the instance control block.
    uint8_t         * p_stack_base;     //!< Base of the allocation stack.
                                        /**<
                                         * Stack is used to store handlers to not allocated elements.
                                         */
    uint8_t         * p_stack_limit;    //!< Maximum possible value of the allocation stack pointer.
    void            * p_memory_begin;   //!< Pointer to the start of the memory pool.
                                        /**<
                                         * Memory is used as a heap for blocks.
                                         */
#if NRF_BALLOC_CONFIG_DEBUG_ENABLED
    void            * p_memory_end;     //!< Pointer to the end of the memory pool.
    uint32_t          debug_flags;      //!< Debugging settings.
                                        /**<
                                         * Debug flag should be created by @ref NRF_BALLOC_DEBUG.
                                         */
#endif // NRF_BALLOC_CONFIG_DEBUG_ENABLED
    uint16_t          block_size;       //!< Size of the allocated block (including debug overhead).
                                        /**<
                                         * Single block contains user element with header and tail 
                                         * words.
                                         */
} nrf_balloc_t;

/**@brief Get total memory consumed by single block (element size with overhead caused by debug 
 *        flags).
 *
 * @param[in]   _element_size    Size of an element.
 * @param[in]   _debug_flags     Debug flags.
 */
#if NRF_BALLOC_CONFIG_DEBUG_ENABLED
    #define NRF_BALLOC_BLOCK_SIZE(_element_size, _debug_flags)                      \
    (                                                                               \
       (sizeof(uint32_t) * NRF_BALLOC_DEBUG_HEAD_GUARD_WORDS_GET(_debug_flags)) +   \
       ALIGN_NUM(sizeof(uint32_t), (_element_size)) +                               \
       (sizeof(uint32_t) * NRF_BALLOC_DEBUG_TAIL_GUARD_WORDS_GET(_debug_flags))     \
    )
#else
    #define NRF_BALLOC_BLOCK_SIZE(_element_size, _debug_flags)  \
                ALIGN_NUM(sizeof(uint32_t), (_element_size))
#endif // NRF_BALLOC_CONFIG_DEBUG_ENABLED

/**@brief Create a block allocator instance with custom debug flags.
 *
 * @note  This macro reserves memory for the given block allocator instance.
 *
 * @param[in]   _name           Name of the allocator.
 * @param[in]   _element_size   Size of one element.
 * @param[in]   _pool_size      Size of the pool.
 * @param[in]   _debug_flags    Debug flags (@ref NRF_BALLOC_DEBUG).
 */
#if NRF_BALLOC_CONFIG_DEBUG_ENABLED
    #define NRF_BALLOC_DBG_DEF(_name, _element_size, _pool_size, _debug_flags)                      \
        STATIC_ASSERT((_pool_size) <= UINT8_MAX);                                                   \
        static uint8_t              _name##_nrf_balloc_pool_stack[(_pool_size)];                    \
        static uint32_t             _name##_nrf_balloc_pool_mem                                     \
            [NRF_BALLOC_BLOCK_SIZE(_element_size, _debug_flags) * (_pool_size) / sizeof(uint32_t)]; \
        static nrf_balloc_cb_t      _name##_nrf_balloc_cb;                                          \
        static const nrf_balloc_t   _name =                                                         \
            {                                                                                       \
                .p_cb           = &_name##_nrf_balloc_cb,                                           \
                .p_stack_base   = _name##_nrf_balloc_pool_stack,                                    \
                .p_stack_limit  = _name##_nrf_balloc_pool_stack + (_pool_size),                     \
                .p_memory_begin = _name##_nrf_balloc_pool_mem,                                      \
                .block_size     = NRF_BALLOC_BLOCK_SIZE(_element_size, _debug_flags),               \
                .p_memory_end   = (uint8_t *)_name##_nrf_balloc_pool_mem                            \
                                + NRF_BALLOC_BLOCK_SIZE(_element_size, _debug_flags) * (_pool_size),\
                .debug_flags    = (_debug_flags),                                                   \
            }
#else
    #define NRF_BALLOC_DBG_DEF(_name, _element_size, _pool_size, _debug_flags)                      \
        STATIC_ASSERT((_pool_size) <= UINT8_MAX);                                                   \
        static uint8_t              _name##_nrf_balloc_pool_stack[(_pool_size)];                    \
        static uint32_t             _name##_nrf_balloc_pool_mem                                     \
            [NRF_BALLOC_BLOCK_SIZE(_element_size, _debug_flags) * (_pool_size) / sizeof(uint32_t)]; \
        static nrf_balloc_cb_t      _name##_nrf_balloc_cb;                                          \
        static const nrf_balloc_t   _name =                                                         \
            {                                                                                       \
                .p_cb           = &_name##_nrf_balloc_cb,                                           \
                .p_stack_base   = _name##_nrf_balloc_pool_stack,                                    \
                .p_stack_limit  = _name##_nrf_balloc_pool_stack + (_pool_size),                     \
                .p_memory_begin = _name##_nrf_balloc_pool_mem,                                      \
                .block_size     = NRF_BALLOC_BLOCK_SIZE(_element_size, _debug_flags),               \
            }
#endif // NRF_BALLOC_CONFIG_DEBUG_ENABLED

/**@brief Create a block allocator instance.
 *
 * @note  This macro reserves memory for the given block allocator instance.
 *
 * @param[in]   _name           Name of the allocator.
 * @param[in]   _element_size   Size of one element.
 * @param[in]   _pool_size      Size of the pool.
 */
#define NRF_BALLOC_DEF(_name, _element_size, _pool_size)           \
            NRF_BALLOC_DBG_DEF(_name, _element_size, _pool_size, NRF_BALLOC_DEFAULT_DEBUG_FLAGS)

/**@brief Create a block allocator interface.
 *
 * @param[in]   _type    Type which is allocated.
 * @param[in]   _name    Name of the allocator.
 */
#define NRF_BALLOC_INTERFACE_DEC(_type, _name)    \
    _type * _name##_alloc(void);                  \
    void    _name##_free(_type * p_element);      \
    uint8_t _name##_max_utilization_get(void)

/**@brief Define a custom block allocator interface.
 *
 * @param[in]   _attr    Function attribute that will be added to allocator function definition.
 * @param[in]   _type    Type which is allocated.
 * @param[in]   _name    Name of the allocator.
 * @param[in]   _p_pool  Pool from which data will be allocated.
 */
#define NRF_BALLOC_INTERFACE_CUSTOM_DEF(_attr, _type, _name, _p_pool)           \
    _attr _type * _name##_alloc(void)                                           \
    {                                                                           \
        ASSERT((_p_pool) != NULL);                                              \
        ASSERT((_p_pool)->block_size >=                                         \
               NRF_BALLOC_BLOCK_SIZE(sizeof(_type), (_p_pool)->debug_flags));   \
        return (_type *)(nrf_balloc_alloc(_p_pool));                            \
    }                                                                           \
                                                                                \
    _attr void _name##_free(_type * p_element)                                  \
    {                                                                           \
        ASSERT((_p_pool) != NULL);                                              \
        ASSERT((_p_pool)->block_size >=                                         \
               NRF_BALLOC_BLOCK_SIZE(sizeof(_type), (_p_pool)->debug_flags));   \
        nrf_balloc_free((_p_pool), p_element);                                  \
    }                                                                           \
                                                                                \
    _attr uint8_t _name##_max_utilization_get(void)                             \
    {                                                                           \
        ASSERT((_p_pool) != NULL);                                              \
        return nrf_balloc_max_utilization_get((_p_pool));                       \
    }

/**@brief Define block allocator interface.
 *
 * @param[in]   _type    Type which is allocated.
 * @param[in]   _name    Name of the allocator.
 * @param[in]   _p_pool  Pool from which data will be allocated.
 */
#define NRF_BALLOC_INTERFACE_DEF(_type, _name, _p_pool)        \
        NRF_BALLOC_INTERFACE_CUSTOM_DEF(/* empty */, _type, _name, _p_pool)

/**@brief Define a local block allocator interface.
 *
 * @param[in]   _type    Type which is allocated.
 * @param[in]   _name    Name of the allocator.
 * @param[in]   _p_pool  Pool from which data will be allocated.
 */
#define NRF_BALLOC_INTERFACE_LOCAL_DEF(_type, _name, _p_pool)  \
        NRF_BALLOC_INTERFACE_CUSTOM_DEF(static, _type, _name, _p_pool)

/**@brief Function for initializing a block memory allocator pool.
 *
 * @param[out]  p_pool          Pointer to the pool that is to be initialized.
 *
 * @return  NRF_SUCCESS on success, otherwise error code.
 */
ret_code_t nrf_balloc_init(nrf_balloc_t const * p_pool);

/**@brief Function for allocating an element from the pool.
 *
 * @note    This module guarantees that the returned memory is aligned to 4.
 *
 * @param[in]   p_pool  Pointer to the memory pool from which the element will be allocated.
 *
 * @return      Allocated element or NULL if the specified pool is empty.
 */
void * nrf_balloc_alloc(nrf_balloc_t const * p_pool);

/**@brief Function for freeing an element back to the pool.
 *
 * @param[in]   p_pool      Pointer to the memory pool.
 * @param[in]   p_element   Element to be freed.
 */
void nrf_balloc_free(nrf_balloc_t const * p_pool, void * p_element);

/**@brief Function for getting maximum memory pool utilization.
 *
 * @param[in]   p_pool Pointer to the memory pool instance.
 *
 * @return Maximum number of elements allocated from the pool.
 */
__STATIC_INLINE uint8_t nrf_balloc_max_utilization_get(nrf_balloc_t const * p_pool)
{
    ASSERT(p_pool != NULL);
    return p_pool->p_cb->max_utilization;
}

#ifdef __cplusplus
}
#endif

#endif // NRF_BALLOC_H__
/** @} */

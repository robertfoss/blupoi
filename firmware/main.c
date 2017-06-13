#include <stdlib.h>

#include "apa102.h"
#include "uart.h"


const uint32_t apa102_0_sck = 2;
const uint32_t apa102_0_mosi = 3;
const uint32_t apa102_1_sck = 4;
const uint32_t apa102_1_mosi = 5;
const uint32_t apa102_nbr_leds = 40;
apa102_t *apa102_0;
apa102_t *apa102_1;


void app_error_fault_handler(uint32_t id, uint32_t pc, uint32_t info)
{
    #ifdef DEBUG
    app_error_print(id, pc, info);
    #endif

    apa102_led_t red = { .a = 32, .r = 255, .g = 0, .b = 0 };
    apa102_setcolor(apa102_0, &red);
    apa102_setcolor(apa102_1, &red);

    while (1);
}

int main(void) {

    /* Setup */
    uart_init(2, 3, 256);
    uart_send("uart_init complete\r\n");
    printf("printf: uart_init complete\r\n");
    apa102_0 = apa102_init(apa102_nbr_leds, apa102_0_sck, apa102_0_mosi);
    apa102_1 = apa102_init(apa102_nbr_leds, apa102_1_sck, apa102_1_mosi);
    apa102_clear(apa102_0);
    apa102_clear(apa102_1);

    apa102_led_t green = { .a = 32, .r = 0, .g = 255, .b = 0 };
    apa102_setcolor(apa102_0, &green);
    apa102_setcolor(apa102_1, &green);
    apa102_send(apa102_0);
    apa102_send(apa102_1);
}

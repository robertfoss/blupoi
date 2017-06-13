#ifndef APA102_H
#define APA102_H


#include <stdint.h>

#include "nrf_drv_spi.h"


typedef struct __attribute__((__packed__)) {
    uint8_t a, r, g, b;
} apa102_led_t;

typedef struct {
    nrf_drv_spi_t *spi;
    nrf_drv_spi_config_t *spi_config;
    apa102_led_t *leds;
    uint16_t nbr_leds;
    uint16_t buf_size;
} apa102_t;

void apa102_clear(apa102_t *apa102);
apa102_t * apa102_init(uint16_t nbr_leds, int spi_sck, int spi_mosi);
void apa102_send(apa102_t *apa102);
void apa102_setcolor(apa102_t *apa102, apa102_led_t *color);
void apa102_wait(apa102_t *apa102);

#endif // APA102_H

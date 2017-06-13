#include <stdlib.h>
#include <string.h>

#include "app_error.h"
#include "app_util_platform.h"
#define NRF_LOG_MODULE_NAME "APA102"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"

#include "apa102.h"

const nrf_drv_spi_t spi[2] =  { NRF_DRV_SPI_INSTANCE(0),
                                NRF_DRV_SPI_INSTANCE(1)};
nrf_drv_spi_config_t spi_config[2] = { NRF_DRV_SPI_DEFAULT_CONFIG,
                                       NRF_DRV_SPI_DEFAULT_CONFIG};

static void apa102_spi_callback(nrf_drv_spi_evt_t const * p_event)
{
    // TODO: Do we care about this event?
}

apa102_t * apa102_init(uint16_t nbr_leds, int spi_sck, int spi_mosi)
{
    // Verify that colors have the expected bitlength
    APP_ERROR_CHECK(sizeof(apa102_led_t) != 4);

    apa102_t *apa102 = calloc(1, sizeof(apa102_t));
    if (!apa102) {
        return NULL;
    }

    /* Account for each LED absorbing 1 clock cycle. */
    uint16_t buf_size = nbr_leds + (nbr_leds / (sizeof(apa102_led_t) * 8));
    apa102_led_t *leds = calloc(1, buf_size * sizeof(apa102_led_t));
    if (!leds) {
        free(apa102);
        return NULL;
    }

    static int spi_inst_ctr = 0;
    APP_ERROR_CHECK(spi_inst_ctr <= 1);
    apa102->spi = (nrf_drv_spi_t *) &spi[spi_inst_ctr];
    apa102->spi_config = &spi_config[spi_inst_ctr];
    spi_inst_ctr++;

    apa102->spi_config->mosi_pin = spi_mosi;
    apa102->spi_config->sck_pin  = spi_sck;
    APP_ERROR_CHECK(nrf_drv_spi_init(apa102->spi,
                                     apa102->spi_config,
                                     apa102_spi_callback));

    apa102->leds = leds;
    apa102->nbr_leds = nbr_leds;
    apa102->buf_size = buf_size;

    return apa102;
}

static void apa102_ceil_alpha(apa102_t *apa102)
{
    APP_ERROR_CHECK(!apa102);

    for (uint16_t i = 0; i < apa102->nbr_leds; i++) {
        uint8_t *led = (uint8_t *) &apa102->leds[i];
        *led |= 0xE0;
    }
}

void apa102_send(apa102_t *apa102)
{
    int err;
    APP_ERROR_CHECK(!apa102);

    apa102_ceil_alpha(apa102);

    err = nrf_drv_spi_transfer(apa102->spi, (uint8_t *) apa102->leds, apa102->buf_size, NULL, 0);
    do {
        err = nrf_drv_spi_transfer(apa102->spi, (uint8_t *) apa102->leds, apa102->buf_size, NULL, 0);
    } while (err == NRF_ERROR_BUSY);
    APP_ERROR_CHECK(err);
}

void apa102_wait(apa102_t *apa102)
{
    int err;
    APP_ERROR_CHECK(!apa102);

    apa102_ceil_alpha(apa102);

    err = nrf_drv_spi_transfer(apa102->spi, NULL, 0, NULL, 0);
    do {
        err = nrf_drv_spi_transfer(apa102->spi, NULL, 0, NULL, 0);
    } while (err == NRF_ERROR_BUSY);
    APP_ERROR_CHECK(err);
}

void apa102_setcolor(apa102_t *apa102, apa102_led_t *color)
{
    APP_ERROR_CHECK(!apa102);
    APP_ERROR_CHECK(!color);

    for (uint16_t i = 0; i < apa102->nbr_leds; i++) {
        apa102->leds[i] = *color;
    }
}

void apa102_clear(apa102_t *apa102)
{
    apa102_led_t color = { .a = 32, .r = 0, .g = 0, .b = 0 };
    apa102_setcolor(apa102, &color);
    apa102_send(apa102);
}

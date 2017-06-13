#include <stdbool.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "app_uart.h"
#include "app_error.h"
#include "nrf.h"

#include "uart.h"

#define RX_PIN  2
#define TX_PIN  3
#define BUFSIZE 256

void uart_error_handle(app_uart_evt_t * p_event)
{
    if (p_event->evt_type == APP_UART_COMMUNICATION_ERROR)
    {
        APP_ERROR_HANDLER(p_event->data.error_communication);
    }
    else if (p_event->evt_type == APP_UART_FIFO_ERROR)
    {
        APP_ERROR_HANDLER(p_event->data.error_code);
    }
}

void uart_init()
{
    uint32_t err_code;

    const app_uart_comm_params_t comm_params =
    {
          RX_PIN,
          TX_PIN,
          0,
          0,
          APP_UART_FLOW_CONTROL_DISABLED,
          false,
          UART_BAUDRATE_BAUDRATE_Baud115200
    };

    APP_UART_FIFO_INIT(&comm_params,
                       BUFSIZE,
                       BUFSIZE,
                       uart_error_handle,
                       APP_IRQ_PRIORITY_LOWEST,
                       err_code);

    APP_ERROR_CHECK(err_code);
    
    printf("\r\nStart: \r\n");

    while (true)
    {
        uint8_t cr;
        while (app_uart_get(&cr) != NRF_SUCCESS);
        while (app_uart_put(cr) != NRF_SUCCESS);

        if (cr == 'q' || cr == 'Q')
        {
            printf(" \r\nExit!\r\n");

            while (true)
            {
                // Do nothing.
            }
        }
    }
}

void uart_send(const char *p)
{
    size_t len = strnlen(p, 1024);
    for (size_t i = 0; i < len; i++) {
        app_uart_put(*p++);
    }
}

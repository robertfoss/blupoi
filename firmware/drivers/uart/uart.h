#ifndef UART_H
#define UART_H

#ifndef RETARGET_ENABLED
#define RETARGET_ENABLED 1
#endif

#include <stdbool.h>
#include <stdint.h>

void uart_init();
void uart_send(const char *p);


#endif // UART_H

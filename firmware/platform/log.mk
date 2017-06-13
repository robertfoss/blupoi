# Include me in your Makefile to build and add includes
# Don't forget to set a correct ROOT

C_SOURCE_FILES += $(NRF5_SDK)/components/drivers_nrf/common/nrf_drv_common.c
C_SOURCE_FILES += $(NRF5_SDK)/components/drivers_nrf/uart/nrf_drv_uart.c
C_SOURCE_FILES += $(NRF5_SDK)/components/libraries/uart/app_uart.c
C_SOURCE_FILES += $(NRF5_SDK)/components/libraries/util/app_util_platform.c
C_SOURCE_FILES += $(NRF5_SDK)/components/libraries/util/app_error.c

INC_PATHS += -I$(NRF5_SDK)/components/libraries/log
INC_PATHS += -I$(NRF5_SDK)/components/libraries/log/src




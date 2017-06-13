# Include me in your Makefile to build and add includes
# Don't forget to set a correct ROOT

include $(ROOT)/platform/uart.mk

C_SOURCE_FILES += $(ROOT)/drivers/uart/uart.c

INC_PATHS += -I$(ROOT)/drivers/uart


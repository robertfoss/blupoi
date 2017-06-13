# Include me in your Makefile to build and add includes
# Don't forget to set a correct ROOT

include $(ROOT)/platform/hal.mk
include $(ROOT)/platform/spi.mk

C_SOURCE_FILES += $(ROOT)/drivers/apa102/apa102.c

INC_PATHS += -I$(ROOT)/drivers/apa102


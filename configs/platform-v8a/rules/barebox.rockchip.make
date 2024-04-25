# -*-makefile-*-
#
# Copyright (C) 2023 by Michael Olbrich <m.olbrich@pengutronix.de>
#
# For further information about the PTXdist project and license conditions
# see the README file.
#

#
# Firmware blobs for barebox
#
ifdef PTXCONF_FIRMWARE_ROCKCHIP

ifdef PTXCONF_FIRMWARE_ROCKCHIP_RK356x_BL31
BAREBOX_INJECT_FILES += rk3568_bl31_v1.24.elf:firmware/rk3568-bl31.bin
endif

ifdef PTXCONF_FIRMWARE_ROCKCHIP_RK356x_BL32
BAREBOX_INJECT_FILES += rk3568_bl32_v1.05.bin:firmware/rk3568-op-tee.bin
endif

ifdef PTXCONF_FIRMWARE_ROCKCHIP_RK3568_SDRAM
BAREBOX_INJECT_FILES += rk3568_ddr_1560MHz_v1.08.bin:arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin
BAREBOX_INJECT_FILES += rk3568_ddr_1560MHz_v1.08.bin:arch/arm/boards/radxa-rock3/sdram-init.bin
endif

endif

# vim: syntax=make

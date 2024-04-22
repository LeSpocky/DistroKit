# -*-makefile-*-
#
# Copyright (C) 2024 by Alexander Dahl <ada@thorsis.com>
#
# For further information about the PTXdist project and license conditions
# see the README file.
#

ifdef PTXCONF_FIRMWARE_IMX
BAREBOX_INJECT_FILES	+= imx8mm-bl31.bin:firmware/imx8mm-bl31.bin
BAREBOX_INJECT_FILES	+= imx8mn-bl31.bin:firmware/imx8mn-bl31.bin
BAREBOX_INJECT_FILES	+= imx8mp-bl31.bin:firmware/imx8mp-bl31.bin
BAREBOX_INJECT_FILES	+= imx8mq-bl31.bin:firmware/imx8mq-bl31.bin
ifdef PTXCONF_FIRMWARE_IMX_BOOTIMAGE_IMX8
BAREBOX_INJECT_FILES	+= ddr/synopsys/lpddr4_pmu_train_1d_dmem.bin:firmware/lpddr4_pmu_train_1d_dmem.bin
BAREBOX_INJECT_FILES	+= ddr/synopsys/lpddr4_pmu_train_1d_imem.bin:firmware/lpddr4_pmu_train_1d_imem.bin
BAREBOX_INJECT_FILES	+= ddr/synopsys/lpddr4_pmu_train_2d_dmem.bin:firmware/lpddr4_pmu_train_2d_dmem.bin
BAREBOX_INJECT_FILES	+= ddr/synopsys/lpddr4_pmu_train_2d_imem.bin:firmware/lpddr4_pmu_train_2d_imem.bin
BAREBOX_INJECT_FILES	+= ddr/synopsys/ddr4_dmem_1d.bin:firmware/ddr4_dmem_1d.bin
BAREBOX_INJECT_FILES	+= ddr/synopsys/ddr4_dmem_2d.bin:firmware/ddr4_dmem_2d.bin
BAREBOX_INJECT_FILES	+= ddr/synopsys/ddr4_imem_1d.bin:firmware/ddr4_imem_1d.bin
BAREBOX_INJECT_FILES	+= ddr/synopsys/ddr4_imem_2d.bin:firmware/ddr4_imem_2d.bin
endif
endif

# vim: syntax=make

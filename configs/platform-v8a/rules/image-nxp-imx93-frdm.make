# -*-makefile-*-
#
# Copyright (C) 2025 by Fabian Pflug <f.pflug@pengutronix.de>
#
# For further information about the PTXdist project and license conditions
# see the README file.
#

#
# We provide this package
#
IMAGE_PACKAGES-$(PTXCONF_IMAGE_NXP_IMX93_FRDM) += image-nxp-imx93-frdm

#
# Paths and names
#
IMAGE_NXP_IMX93_FRDM		:= image-nxp-imx93-frdm
IMAGE_NXP_IMX93_FRDM_DIR	:= $(BUILDDIR)/$(IMAGE_NXP_IMX93_FRDM)
IMAGE_NXP_IMX93_FRDM_IMAGE	:= $(IMAGEDIR)/nxp-imx93-frdm.img
IMAGE_NXP_IMX93_FRDM_FILES	:= $(IMAGEDIR)/root.tgz
IMAGE_NXP_IMX93_FRDM_CONFIG	:= imx93.config

# ----------------------------------------------------------------------------
# Image
# ----------------------------------------------------------------------------

IMAGE_NXP_IMX93_FRDM_ENV := \
        BAREBOX_IMAGE=barebox-nxp_mx93_frdm.img

$(IMAGE_NXP_IMX93_FRDM_IMAGE):
	@$(call targetinfo)
	@$(call image/genimage, IMAGE_NXP_IMX93_FRDM)
	@$(call finish)

# vim: syntax=make

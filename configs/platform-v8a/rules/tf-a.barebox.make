ifdef PTXCONF_TF_A
ifneq ($(filter k3,$(call remove_quotes, $(PTXCONF_TF_A_PLATFORMS))),)
BAREBOX_INJECT_FILES	+= k3-bl31.bin:firmware/k3-bl31.bin
endif
endif
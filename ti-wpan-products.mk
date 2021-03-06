# This file lists the firmware, software that are specific to
# WiLink connectivity chip on OMAPx platforms.

PRODUCT_PACKAGES += uim-sysfs \
	kfmapp     \
        FmRxApp \
        FmTxApp \
        FmService \
        libfmradio \
        fmradioif \
        com.ti.fm.fmradioif.xml


#copy firmware
PRODUCT_COPY_FILES += \
  system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

_all_fw_files := $(wildcard device/ti/proprietary-open/wl12xx/wpan/*/*.bts)
PRODUCT_COPY_FILES += $(foreach f, $(_all_fw_files),$(f):system/etc/firmware/$(notdir $(f)) )

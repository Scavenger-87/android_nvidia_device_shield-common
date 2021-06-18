# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.resampler.quality=7 \
    af.fast_downmix=1 \
    af.thread.throttle=0 \
    media.aac_51_output_enabled=true

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.override_lcd_density=1 \
    persist.tegra.decompression=cde-client

ifeq ($(TARGET_TEGRA_VERSION),t114)
	PRODUCT_PROPERTY_OVERRIDES += persist.tegra.compositor=surfaceflinger
else
	PRODUCT_PROPERTY_OVERRIDES += persist.tegra.compositor=glcomposer
endif

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Input
PRODUCT_PROPERTY_OVERRIDES += \
    ro.input.noresample=1

# HDMI CEC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hdmi.device_type=4 \
    persist.sys.hdmi.keep_awake_false

# Nvmm
PRODUCT_PROPERTY_OVERRIDES += \
    persist.tegra.nvmmlite=1

# PBC
ifeq ($(TARGET_TEGRA_VERSION),t210)
	PRODUCT_PROPERTY_OVERRIDES += \
	    persist.sys.pbc.enabled=1 \
	    persist.sys.pbc.pbat.cap=30000 \
	    persist.sys.pbc.ibat.cap=4000 \
	    persist.sys.pbc.inf.game.mode=1 \
	    pbc.inf.socthres=20 \
	    pbc.pbat.slope=1.5 \
	    pbc.pbat.intercept=-7 \
	    pbc.log.on=0 \
	    pbc.hist.size=5 \
	    pbc.step.period=700 \
	    pbc.polling.period=100 \
	    pbc.throttle.depth=0 \
	    pbc.hyst=5 \
	    persist.sys.pbc.psys.cap=29999 \
	    pbc.over.cfboost=true \
	    pbc.cfboost.floor=800000 \
	    pbc.gfboost.floor=300000
endif

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.Xinterface=xlan0 \
    ap.interface=wlan0 \
    persist.wlan.ti.calibrated=0
    
# LMKd
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lmk.low=1001 \
    ro.lmk.medium=800 \
    ro.lmk.critical=0 \
    ro.lmk.critical_upgrade=false \
    ro.lmk.upgrade_pressure=100 \
    ro.lmk.downgrade_pressure=100 \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.kill_timeout_ms=100 \
    ro.lmk.use_minfree_levels=true    

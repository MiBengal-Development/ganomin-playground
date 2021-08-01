# Blurs
PRODUCT_PRODUCT_PROPERTIES += \
    ro.surface_flinger.supports_background_blur=1 \
    ro.sf.blurs_are_expensive=1

# Dex2oat
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat64.enabled=true

# DRM
PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true
    
# Graphics
PRODUCT_PRODUCT_PROPERTIES += \
    debug.hwui.renderer=opengl \
    debug.cpurend.vsync=false \
    debug.sf.enable_gl_backpressure=1 \
    debug.sf.hw=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1 \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.use_color_management=true \
    ro.surface_flinger.has_HDR_display=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.protected_contents=true \
    ro.surface_flinger.running_without_sync_framework=true \
    ro.surface_flinger.use_context_priority=true \
    vendor.display.disable_rotator_downscale=1 \
    ro.hardware.egl=adreno \
    ro.hardware.vulkan=adreno

# Always use GPU for screen compositing - fixes flickering on webview dependent apps
PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.disable_hwc_overlays=1
    
# Media
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.media_vol_steps=15

# Power-saving props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.use_data_netmgrd=true \
    ro.vold.umsdirtyratio=20 \
    ro.ril.disable.power.collapse=0 \
    power.saving.mode=1 \
    pm.sleep_mode=1
    
# IORap
PRODUCT_PROPERTY_OVERRIDES += \
    ro.iorapd.enable=true \
    iorapd.perfetto.enable=true \
    persist.device_config.runtime_native_boot.iorap_perfetto_enable=true \
    persist.device_config.runtime_native_boot.iorap_readahead_enable=true \
    persist.device_config.runtime_native_boot.iorapd_perfetto_enable=true \
    persist.device_config.runtime_native_boot.iorapd_readahead_enable=true \
    iorapd.readahead.enable=true

# Disable Rescue Party, Fluid recommends userdebug build anyway - also keeps "rescuing" the phone when system is modified
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.disable_rescue=true \
    persist.device_config.configuration.disable_rescue_party=true

#Gboard Configuration by Vern
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.ime.corner_key_l=35 \
    ro.com.google.ime.corner_key_r=35 \
    ro.com.google.ime.themed_nav_bar_style=2 \
    ro.com.google.ime.silk_theme=true \
    ro.com.google.ime.pill_shaped_key=true \
    ro.com.google.ime.enable_keyboard_redesign=true \
    ro.com.google.ime.use_keyboard_redesign_theme_by_default=true \
    ro.com.google.ime.kb_pad_port_r=8.0 \
    ro.com.google.ime.kb_pad_port_l=8.0 \
    ro.com.google.ime.kb_pad_port_b=1 \
    ro.com.google.ime.kb_pad_land_r=96.0 \
    ro.com.google.ime.kb_pad_land_l=96.0

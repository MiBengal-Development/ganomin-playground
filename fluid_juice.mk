#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/juice/device.mk)

# Inherit some common Project-Fluid stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps
ifeq ($(GAPPS),true)
TARGET_INCLUDE_GAPPS := true
endif
TARGET_INCLUDE_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := fluid_juice
PRODUCT_DEVICE := juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := sm6115
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Project Fluid props
PRODUCT_PRODUCT_PROPERTIES += \
  ro.fluid.maintainer=ganomin \
  ro.fluid.cpu=SDM662

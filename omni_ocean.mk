#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from ocean device
$(call inherit-product, device/motorola/ocean/device.mk)

PRODUCT_DEVICE := ocean
PRODUCT_NAME := omni_ocean
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(7) power
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ocean_retail-user 10 QPOS30.52-29-12 401fd release-keys"

BUILD_FINGERPRINT := motorola/ocean_retail/ocean:10/QPOS30.52-29-12/401fd:user/release-keys

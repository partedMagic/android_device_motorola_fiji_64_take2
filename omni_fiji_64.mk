#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff. |  PBRP Fix
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from fiji_64 device
$(call inherit-product, device/motorola/fiji_64/device.mk)

PRODUCT_DEVICE := fiji_64
PRODUCT_NAME := omni_fiji_64
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto e6s
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fiji_64-user 9 POES29.288-60-6-1-29 c6fde release-keys"

BUILD_FINGERPRINT := motorola/fiji_64/fiji:9/POES29.288-60-6-1-29/c6fde:user/release-keys

#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from your device.mk (The file we just fixed to avoid the etc folder collision)
$(call inherit-product, device/lenovo/YT_X705X/device.mk)

# Device identifier
PRODUCT_DEVICE := YT_X705X
PRODUCT_NAME := twrp_YT_X705X
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo Yoga Smart Tab (YT-X705X)
PRODUCT_MANUFACTURER := lenovo

# Release info
PRODUCT_RELEASE_NAME := Lenovo YT-X705X

# Fingerprint and build description (Matches Android 10 stock for better decryption support)
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=YT_X705X \
    PRODUCT_NAME=YT_X705X \
    PRIVATE_BUILD_DESC="YT_X705X-user 10 QKQ1.191215.002 119 release-keys"

BUILD_FINGERPRINT := Lenovo/YT_X705X/YT_X705X:10/QKQ1.191215.002/119:user/release-keys

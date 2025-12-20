#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from device configuration
$(call inherit-product, device/lenovo/YT_X705X/device.mk)

# Device identifier
PRODUCT_DEVICE := YT_X705X
PRODUCT_NAME := omni_YT_X705X
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Yoga Smart Tab
PRODUCT_MANUFACTURER := lenovo
PRODUCT_RELEASE_NAME := YT-X705X

PRODUCT_GMS_CLIENTID_BASE := android-lenovo-rev2

# Fingerprint and build descriptions
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="YT-X705X-user 10 QKQ1.191224.003 X705X_S001137_220802_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/YT-X705X/YT-X705X:10/QKQ1.191224.003/X705X_S001137_220802_ROW:user/release-keys

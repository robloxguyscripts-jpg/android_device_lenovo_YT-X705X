#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from YT-X705X device
$(call inherit-product, device/lenovo/YT-X705X/device.mk)

PRODUCT_DEVICE := YT-X705X
PRODUCT_NAME := omni_YT-X705X
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo YT-X705X
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="YT-X705X-user 10 QKQ1.191224.003 X705X_S001137_220802_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/YT-X705X/YT-X705X:10/QKQ1.191224.003/X705X_S001137_220802_ROW:user/release-keys

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
# Note: In TWRP 11, this usually points to the omni config base
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from our fixed device.mk (This contains the 99% symlink fix)
$(call inherit-product, device/lenovo/YT_X705X/device.mk)

# Device identifier
PRODUCT_DEVICE := YT_X705X
PRODUCT_NAME := twrp_YT_X705X
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo-YT-X705X
PRODUCT_MANUFACTURER := lenovo

PRODUCT_RELEASE_NAME := Lenovo-YT-X705X

# Target Fingerprint (Matching a stable Android 10 build for this device)
PRODUCT_GMS_CLIENTID_BASE := android-lenovo

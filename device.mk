#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/lenovo/YT-X705X

# Inherit from core AOSP products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Recovery tools
PRODUCT_PACKAGES += \
    otafault \
    cpio \
    fec

# Ensure the build system sees the namespace defined in Android.bp
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Recovery tools
PRODUCT_PACKAGES += \
    otafault \
    cpio \
    fec

# Soong namespaces
# This must match the folder path where your tree is cloned
PRODUCT_SOONG_NAMESPACES += \
    device/lenovo/YT-X705X

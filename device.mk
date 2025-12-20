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

# Soong namespaces - Fixed to match your repo name
PRODUCT_SOONG_NAMESPACES += \
    device/lenovo/android_device_lenovo_YT-X705X

# Copy hardware configs from your main branch into the TWRP image
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery.fstab:recovery/root/system/etc/recovery.fstab \
    $(DEVICE_PATH)/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc

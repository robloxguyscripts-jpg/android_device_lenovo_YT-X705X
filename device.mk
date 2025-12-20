# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Recovery tools
PRODUCT_PACKAGES += \
    otafault \
    cpio \
    toybox

PRODUCT_SOONG_NAMESPACES += \
    device/lenovo/YT_X705X

# THE 99% FIX: Copying to system/etc avoids the "root/etc" symlink collision
PRODUCT_COPY_FILES += \
    device/lenovo/YT_X705X/recovery.fstab:recovery/root/system/etc/recovery.fstab \
    device/lenovo/YT_X705X/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Recovery tools & essential binaries
PRODUCT_PACKAGES += \
    otafault \
    cpio \
    toybox \
    sh \
    reboot

# Soong Namespace
PRODUCT_SOONG_NAMESPACES += \
    device/lenovo/YT_X705X

# THE 99% FIX: 
# We copy recovery.fstab to system/etc/ to avoid the symlink collision at root/etc.
# We copy init.recovery.qcom.rc to the root so the kernel can find it.
PRODUCT_COPY_FILES += \
    device/lenovo/YT_X705X/recovery.fstab:recovery/root/system/etc/recovery.fstab \
    device/lenovo/YT_X705X/init.recovery.qcom.rc:recovery/root/init.recovery.qcom.rc

# Add any additional firmware or blobs here if needed later

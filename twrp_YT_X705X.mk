# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit TWRP common configuration (Required for AOSP manifest)
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from the device configuration
# Ensure this folder name matches exactly where you clone the repo
$(call inherit-product, device/lenovo/android_device_lenovo_YT-X705X/device.mk)

PRODUCT_DEVICE := YT_X705X
PRODUCT_NAME := twrp_YT_X705X
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo YT-X705X
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo-rev2

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="YT-X705X-user 10 QKQ1.191224.003 X705X_S001137_220802_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/YT-X705X/YT-X705X:10/QKQ1.191224.003/X705X_S001137_220802_ROW:user/release-keys

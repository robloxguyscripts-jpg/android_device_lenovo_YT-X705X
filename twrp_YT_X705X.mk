# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit TWRP common configuration
# Note: For TWRP 11, the path is usually vendor/twrp/config/common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from your device.mk (The file we just fixed)
$(call inherit-product, device/lenovo/YT_X705X/device.mk)

# Device identifier
PRODUCT_DEVICE := YT_X705X
PRODUCT_NAME := twrp_YT_X705X
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo YT-X705X
PRODUCT_MANUFACTURER := lenovo

# Release info
PRODUCT_RELEASE_NAME := Lenovo YT-X705X

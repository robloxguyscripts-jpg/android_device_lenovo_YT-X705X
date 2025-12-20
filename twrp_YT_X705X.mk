# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Match this path to the 'Clone Device Tree' step in your YAML
$(call inherit-product, device/lenovo/YT_X705X/device.mk)

PRODUCT_DEVICE := YT_X705X
PRODUCT_NAME := twrp_YT_X705X
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo YT-X705X
PRODUCT_MANUFACTURER := lenovo

# Initialise device config
$(call inherit-product, device/samsung/zeroltechn/full_zeroltechn.mk)

TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Enhanced NFC
# $(call inherit-product, vendor/lineage/config/nfc_enhanced.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit properties for TeamNexus-bases ROMs
$(call inherit-product, vendor/nexus/product.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="zeroltechn" \
    TARGET_DEVICE="zerolte"

PRODUCT_NAME := aosp_zeroltechn
PRODUCT_DEVICE := zeroltechn

# Unified Power-HAL support
DEVICE_TREE_IS_AOSP := true

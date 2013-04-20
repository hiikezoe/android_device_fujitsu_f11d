# Release name
PRODUCT_RELEASE_NAME := f11d

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/fujitsu/f11d/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := f11d
PRODUCT_NAME := full_f11d
PRODUCT_BRAND := fujitsu
PRODUCT_MODEL := f11d
PRODUCT_MANUFACTURER := fujitsu

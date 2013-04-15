## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := f11d

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/fujitsu/f11d/device_f11d.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := f11d
PRODUCT_NAME := cm_f11d
PRODUCT_BRAND := fujitsu
PRODUCT_MODEL := f11d
PRODUCT_MANUFACTURER := fujitsu

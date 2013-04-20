$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/fujitsu/f11d/f11d-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/fujitsu/f11d/overlay

# Init files in initramfs
PRODUCT_COPY_FILES += \
  device/fujitsu/f11d/root/ueventd.f11d.rc:root/ueventd.f11d.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_f11d
PRODUCT_DEVICE := f11d

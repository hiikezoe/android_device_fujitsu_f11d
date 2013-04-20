# Init files in initramfs
PRODUCT_COPY_FILES += \
  device/fujitsu/f11d/root/init.rc:root/init.rc \
  device/fujitsu/f11d/root/init.target.rc:root/init.target.rc \
  device/fujitsu/f11d/root/init.f11d.rc:root/init.f11d.rc \
  device/fujitsu/f11d/root/init.qcom.rc:root/init.qcom.rc \
  device/fujitsu/f11d/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
  device/fujitsu/f11d/root/init.qcom.usb.sh:root/init.qcom.usb.sh \
  device/fujitsu/f11d/root/init.qcom.ril.path.sh:root/init.qcom.ril.path.sh \
  device/fujitsu/f11d/root/init.qcom.sh:root/init.qcom.sh \
  device/fujitsu/f11d/root/initlogo.rle:root/initlogo.rle \
  device/fujitsu/f11d/root/ueventd.rc:root/ueventd.rc


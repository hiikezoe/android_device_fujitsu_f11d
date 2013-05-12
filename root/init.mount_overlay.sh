#!/system/bin/sh

/system/bin/mount -t overlayfs -olowerdir=/system,upperdir=/b2g overlayfs /system

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/fujitsu/f11d/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7630_surf
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_FPU : = neon
TARGET_BOOTLOADER_BOARD_NAME := f11d

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/fujitsu/f11d/recovery/keys.c
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=f11d
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_FORCE_RAMDISK_ADDRESS := 0x1500000
KERNEL_DEFCONFIG := is3jp-perf_defconfig
KERNEL_HEADERS += kernel/fujitsu/f11d/include

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

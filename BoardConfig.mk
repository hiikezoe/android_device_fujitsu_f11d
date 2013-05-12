USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/fujitsu/f11d/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7630_surf
QCOM_BOARD_PLATFORMS := $(TARGET_BOARD_PLATFORM)
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_FPU := neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_BOOTLOADER_BOARD_NAME := f11d

BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/fujitsu/f11d/recovery/keys.c
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

BOARD_KERNEL_CMDLINE := console=ttyDCC0 androidboot.hardware=f11d
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_FORCE_RAMDISK_ADDRESS := 0x1500000
KERNEL_DEFCONFIG := is3jp-perf_defconfig
KERNEL_HEADERS += kernel/fujitsu/f11d/include

BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 133562368 # 128MiB
BOARD_USERDATAIMAGE_PARTITION_SIZE := 419430400 # 400MiB
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_FLASH_BLOCK_SIZE := 262144
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := true

USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/fujitsu/f11d/egl.cfg

# for QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
BOARD_USES_QCOM_AUDIO_RESETALL := true
BOARD_ADRENO_DECIDE_TEXTURE_TARGET := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
TARGET_GRALLOC_USES_ASHMEM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE -DUSE_GENLOCK
TARGET_USES_C2D_COMPOSITION := true
QC_PROP := false

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

include build/core/utils.mk

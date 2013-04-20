LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

include kernel/fujitsu/f11d/AndroidKernel.mk

file := $(INSTALLED_KERNEL_TARGET)
$(file) : $(TARGET_PREBUILT_KERNEL) | $(ACP)
  $(transform-prebuilt-to-target)

# include the non-open-source counterpart to this file
-include vendor/fujitsu/f11d/AndroidBoardVendor.mk

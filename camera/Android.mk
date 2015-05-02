LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := camera.bacon
LOCAL_SRC_FILES := CameraWrapper.cpp

LOCAL_C_INCLUDES := \
	    system/media/camera/include

LOCAL_SHARED_LIBRARIES := \
	    libhardware liblog libcamera_client libutils libcutils libdl

LOCAL_MODULE_PATH := $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/hw
LOCAL_CFLAGS := -Werror
include $(BUILD_SHARED_LIBRARY)

$(combo_2nd_arch_prefix)TARGET_NDK_GCC_VERSION := 4.8

LOCAL_CC := $$(TARGET_TOOLCHAIN_ROOT)/../arm-linux-androideabi-4.8/bin/arm-linux-androideabi-gcc$$(HOST_EXECUTABLE_SUFFIX)
LOCAL_CXX := $$(TARGET_TOOLCHAIN_ROOT)/../arm-linux-androideabi-4.8/bin/arm-linux-androideabi-g++$$(HOST_EXECUTABLE_SUFFIX)


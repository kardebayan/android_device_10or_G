LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE      := libshim_nvram
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES   := libnvram/libshim_nvram.cpp
include $(BUILD_SHARED_LIBRARY)


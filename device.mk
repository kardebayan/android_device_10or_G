#
# Copyright 2020 The Android Open Source Project
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Audio
PRODUCT_PACKAGES += \
    audio.primary.mt6771 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.hearing_aid.default

# Audio policy configuration
USE_XML_AUDIO_POLICY_CONF := 1

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/a2dp_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_policy_configuration_stub.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_policy_configuration_stub.xml \
    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default_volume_tables.xml \
    $(LOCAL_PATH)/audio/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/hearing_aid_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/r_submix_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/usb_audio_policy_configuration.xml \
    $(LOCAL_PATH)/audio/audio_effects.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_effects.conf

# APNs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml \
    $(LOCAL_PATH)/configs/apns-conf.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/apns-conf.xml


# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.CPH1859

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

# Keyboard layout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/ACCDET.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

# Input/DT2W
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/touchpanel.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/touchpanel.kl

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.secure_lock_screen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.secure_lock_screen.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/handheld_core_hardware.xml \
    $(LOCAL_PATH)/permissions/com.mediatek.op.ims.common.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.mediatek.op.ims.common.xml \
    $(LOCAL_PATH)/permissions/privapp-permissions-mediatek.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-mediatek.xml \
    $(LOCAL_PATH)/permissions/com.mediatek.ims.plugin.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/com.mediatek.ims.plugin.xml \
    frameworks/native/data/etc/android.hardware.telephony.ims.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.telephony.ims.xml


# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/misc/factory.ini:$(TARGET_COPY_OUT_SYSTEM)/etc/factory.ini \
    $(LOCAL_PATH)/misc/custom.conf:$(TARGET_COPY_OUT_SYSTEM)/etc/custom.conf

# Init
PRODUCT_PACKAGES += \
    fstab.mt6771 \
    init.target.rc \
    set_zram.sh

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.3-service.clearkey \
    android.hardware.drm@1.1-service.widevine

# GCam Go
PRODUCT_PACKAGES += \
    GCam

# FirefoxLite
PRODUCT_PACKAGES += \
    FirefoxLite

# QKsms
PRODUCT_PACKAGES += \
    qksms

# Removed Packages
PRODUCT_PACKAGES += \
    RemovePackages \
    RemovePackages-1 \
    RemovePackages-2 \
    RemovePackages-3


# HIDL
PRODUCT_PACKAGES += \
    android.hidl.manager-V1.0-java \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0_system \
    libhidltransport \
    libhwbinder

#WiFi
PRODUCT_PACKAGES += \
    hostapd \
    libwpa_client \
    libwifi-hal \
    wpa_supplicant \
    wpa_supplicant.conf \
    WifiOverlay


# Tethering
PRODUCT_PACKAGES += \
    TetheringConfigOverlay


# KPOC
PRODUCT_PACKAGES += \
    libsuspend

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Seccomp
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp/mediaextractor.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Manifest
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:$(TARGET_COPY_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/vintf/manifest.xml

#BlurGang 
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.sf.blurs_are_expensive=1 \
    ro.surface_flinger.supports_background_blur=1 \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 28
PRODUCT_EXTRA_VNDK_VERSIONS := 28

PRODUCT_PACKAGES += \
    RcsService

# ImsInit hack
PRODUCT_PACKAGES += \
    ImsInit

PRODUCT_PACKAGES += \
    TrebleApp

PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/permissions/interfaces.xml:system/etc/permissions/interfaces.xml


# Privapp-permissions whitelist for PhhTrebleApp
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/permissions/privapp-permissions-me.phh.treble.app.xml:system/etc/permissions/privapp-permissions-me.phh.treble.app.xml

# Get non-open-source specific aspects
$(call inherit-product, vendor/oppo/CPH1859/CPH1859-vendor.mk)


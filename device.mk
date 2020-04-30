#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/oneplus/hotdog/hotdog-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage/frameworks/base/packages/SystemUI \
    $(LOCAL_PATH)/overlay-lineage/lineage-sdk

# A/B
AB_OTA_PARTITIONS += \
    odm \
    product \
    recovery \
    vbmeta_system

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/mixer_paths_pahu.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_pahu.xml \
    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_tavil.xml

# Camera
PRODUCT_PACKAGES += \
    vendor.lineage.camera.motor@1.0 \
    vendor.lineage.camera.motor@1.0-service.oneplus_msmnile \
    OnePlusCameraHelper

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.display.hotdog.rc

# fastbootd
PRODUCT_PACKAGES += \
    fastbootd

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_RAMDISK)/fstab.qcom

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.2-service.oneplus_msmnile

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_USE_DYNAMIC_PARTITIONS := true

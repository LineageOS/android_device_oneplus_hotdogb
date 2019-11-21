#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)
$(call inherit-product, device/oneplus/sm8150-common/common.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_props.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Camera
PRODUCT_PACKAGES += \
    vendor.lineage.camera.motor@1.0 \
    vendor.lineage.camera.motor@1.0-service.hotdog \
    OnePlusCameraHelper

# Device init scripts
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.display.hotdog.rc

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_SHIPPING_API_LEVEL := 29
PRODUCT_USE_DYNAMIC_PARTITIONS := true

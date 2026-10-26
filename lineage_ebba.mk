#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ebba device
$(call inherit-product, device/oneplus/ebba/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_ebba
PRODUCT_DEVICE := ebba
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := EB2101

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlusNordCE-user 13 TP1A.220905.001 R.22c04e8-1f0-1f1 release-keys" \
    BuildFingerprint=OnePlus/OnePlusNordCE_IND/OnePlusNordCE:13/TP1A.220905.001/R.22c04e8-1f0-1f1:user/release-keys \
    DeviceName=OnePlusNordCE \
    DeviceProduct=OnePlusNordCE \
    SystemDevice=OnePlusNordCE \
    SystemName=OnePlusNordCE

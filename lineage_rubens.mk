#
# Copyright (C) 2023-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/rubens/device.mk)

# Inherit LineageOS product
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_rubens
PRODUCT_DEVICE := rubens
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22041211AC

PRODUCT_SYSTEM_NAME := rubens

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Redmi/rubens/rubens:14/UP1A.231005.007/OS2.0.5.0.ULNCNXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_NAME) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    SystemDevice=$(PRODUCT_SYSTEM_NAME) \
    SystemName=$(PRODUCT_SYSTEM_NAME)

# AviumUI configs
AVIUM_MAINTAINER := InvalidName & 莫名其妙2333
AVIUM_SETTINGS_SOC_MODEL_NAME := Mediatek Dimensity 8100
AVIUM_SETTINGS_DEVICE_CODENAME := Redmi K50
AVIUM_IS_OFFICIAL := true
WITH_GMS := true
AVIUM_FORCE_SET_FAKE_PROP := true
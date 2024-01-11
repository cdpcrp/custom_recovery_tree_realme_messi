#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from messi device
$(call inherit-product, device/realme/messi/device.mk)

PRODUCT_DEVICE := messi
PRODUCT_NAME := twrp_$(PRODUCT_DEVICE)
PRODUCT_BRAND := realme
PRODUCT_MODEL := Realme 9 4G
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)
PRODUCT_PLATFORM := bengal

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_BRAND)
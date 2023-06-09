#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from willowpro device
$(call inherit-product, device/vsmart/willowpro/device.mk)

PRODUCT_DEVICE := willowpro
PRODUCT_NAME := twrp_willowpro
PRODUCT_BRAND := vsmart
PRODUCT_MODEL := Star 4
PRODUCT_MANUFACTURER := vsmart

PRODUCT_GMS_CLIENTID_BASE := android-vsmart

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="willowpro_open-user 11 RP1A.200720.011 V341A_OPN_U_B4_211229 release-keys"

BUILD_FINGERPRINT := vsmart/willowpro_open/willowpro:11/RP1A.200720.011/V341A_OPN_U_B4_211229:user/release-keys

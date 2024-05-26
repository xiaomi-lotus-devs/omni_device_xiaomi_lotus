#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from lotus device
$(call inherit-product, device/xiaomi/lotus/device.mk)

PRODUCT_DEVICE := lotus
PRODUCT_NAME := omni_lotus
PRODUCT_BRAND := xiaomi
PRODUCT_MODEL := MI PLAY
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lotus-user 8.1.0 O11019 V11.0.10.0.OFIMIXM release-keys"

BUILD_FINGERPRINT := xiaomi/lotus/lotus:8.1.0/O11019/V11.0.10.0.OFIMIXM:user/release-keys

#
# Copyright (C) 2017-2018 The exTHmUI Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# exTHmUI OFFICIAL
EXTHM_COMPILERTYPE := UNOFFICIAL

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/gemini/device.mk)

# Inherit exTHmUI product configuration
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_GAPPS_ARCH := arm64

# Inherit some common exTHmUI stuff.
$(call inherit-product, vendor/exthm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="gemini" \
    TARGET_DEVICE="gemini" \
    PRIVATE_BUILD_DESC="gemini-user 10 QKQ1.190910.002 V10.2.2.0.OAAMIXM release-keys"

BUILD_FINGERPRINT := "google/coral/coral:10/QQ2A.200305.003/6156912:user/release-keys"

TARGET_VENDOR_PRODUCT_NAME := gemini
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Device identifier
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := gemini
PRODUCT_NAME := exthm_gemini
PRODUCT_DEVICE := gemini
PRODUCT_MODEL := MI 5

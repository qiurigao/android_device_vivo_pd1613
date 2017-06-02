#
# Copyright (C) 2016 The CyanogenMod Project
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

# Inherit framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from PD1613 device
$(call inherit-product, device/vivo/y55/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/sm/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := vivo
PRODUCT_DEVICE := y55
PRODUCT_NAME := sm_y55
PRODUCT_BRAND := vivo
PRODUCT_MODEL := vivo Y55
PRODUCT_MANUFACTURER := vivo

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="vivo/PD1613/PD1613:6.0.1/MMB29M/compiler05020149:user/release-keys" \
    PRIVATE_BUILD_DESC="vivo-user 6.0.1 MMB29M Y55 release-keys"


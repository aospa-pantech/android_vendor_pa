#
# Copyright (C) 2021 Paranoid Android
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

# Check for target product
ifeq (pa_ef63,$(TARGET_PRODUCT))

# Inherit from framework first
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from surya device configuration
$(call inherit-product, device/pantech/ef63/device.mk)

# Inherit from common Paranoid Android configuration
$(call inherit-product, vendor/pa/config/common_full_phone.mk)

# Device identifier
PRODUCT_NAME := pa_ef63
PRODUCT_DEVICE := ef63
PRODUCT_BRAND := VEGA
PRODUCT_MODEL := VEGA IRON 2
PRODUCT_MANUFACTURER := Pantech
PRODUCT_GMS_CLIENTID_BASE := android-pantech

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

endif

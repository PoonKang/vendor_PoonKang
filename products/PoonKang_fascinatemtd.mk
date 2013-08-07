# Copyright (C) 2013 ParanoidAndroid Project
# 2013 Modifications by PoonKang
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

# vendor/pa/prebuilt/common/etc

# Check for target product
ifeq (PoonKang_fascinatemtd,$(TARGET_PRODUCT))

# Build additional packages (currently disabled)
BONUS_PACKAGES ?= false

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := HDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_hdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/PoonKang/config/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/fascinatemtd/full_fascinatemtd.mk)

# Inherit CDMA configuration
#$(call inherit-product, vendor/pa/config/cdma.mk)

# Inherit CDMA configuration
APN_CONF ?= apns-conf-cdma

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/PoonKang/packages/fascinatemtd.mk

# CM Package Extras
-include vendor/pa/packages/cm.mk

# Build kernel from sources
KERNEL_FROM_SOURCE ?= true

# Build alternate kernel from sources
CUSTOM_KERNEL ?= false

# Custom Kernel defconfig
# KERNEL_CONFIG ?= 

# Override AOSP build properties
PRODUCT_NAME := PoonKang_fascinatemtd
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SCH-I500
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SCH-I500 TARGET_DEVICE=SCH-I500 BUILD_FINGERPRINT=verizon/SCH-I500/SCH-I500:2.3.5/GINGERBREAD/EI20:user/release-keys PRIVATE_BUILD_DESC="SCH-I500-user 2.3.5 GINGERBREAD EI20 release-keys"

endif


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

# ParanoidAndroid configuration
ifeq (ParanoidAndroid,$(BUILD_TYPE))

# Build additional packages (currently disabled)
BONUS_PACKAGES ?= false

# Define PA bootanimation size
PARANOID_BOOTANIMATION_NAME := XHDPI

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_xhdpi

# Build paprefs from sources
PREFS_FROM_SOURCE ?= false

# Include ParanoidAndroid common configuration
include vendor/PoonKang/config/common.mk

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit CDMA configuration
# $(call inherit-product, vendor/PoonKang/config/cdma.mk)

# Inherit CDMA configuration
APN_CONF ?= apns-conf-cdma

# Product Package Extras - Repos can be added manually or via addprojects.py
-include vendor/PoonKang/packages/d2vzw.mk

# CM Package Extras
-include vendor/pa/packages/cm.mk

# Build kernel from sources
KERNEL_FROM_SOURCE ?= true

# Build alternate kernel from sources or default to CM's
CUSTOM_KERNEL ?= false

# Custom Kernel defconfig
# KERNEL_CONFIG ?= 

# Override AOSP build properties
PRODUCT_NAME := PoonKang_d2vzw
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := SCH-I535
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="Verizon/d2vzw/d2vzw:4.1.2/JZO54K/I535VRBMF1:user/release-keys" PRIVATE_BUILD_DESC="d2vzw-user 4.1.2 JZO54K I535VRBMF1 release-keys"

endif

# PAC-man configuration
ifeq ($(BUILD_TYPE),PACMAN)

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_d2

# AOKP device overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/pac/overlay/aokp/device/d2-common

# PAC device overlay
$(shell cp -f vendor/pac/prebuilt/common/bootanimation_framework/android-logo-mask_samsung-xhdpi.png frameworks/base/core/res/assets/images/android-logo-mask.png)

# PAC boot logo
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/common/bootlogo/pac_logo_720x1280.rle:root/logo.rle

# Copy bootanimation
PRODUCT_COPY_FILES += \
    vendor/pac/prebuilt/xhdpi/bootanimation.zip:system/media/bootanimation.zip

# include PAC common configuration
include vendor/PoonKang/config/pac-man.mk

# Inherit CM device configuration
$(call inherit-product, device/samsung/d2vzw/cm.mk)

PRODUCT_NAME := PoonKang_d2vzw

endif

ifeq (Carbon,$(BUILD_TYPE))
$(call inherit-product, device/samsung/d2vzw/full_d2vzw.mk)

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common_cdma.mk)

# Inherit some common Carbon stuff.
$(call inherit-product, vendor/carbon/config/common_phone.mk)

# languages
PRODUCT_LOCALES := en_US

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=d2vzw TARGET_DEVICE=d2vzw BUILD_FINGERPRINT="Verizon/d2vzw/d2vzw:4.1.2/JZO54K/I535VRBMF1:user/release-keys" PRIVATE_BUILD_DESC="d2vzw-user 4.1.2 JZO54K I535VRBMF1 release-keys"

PRODUCT_NAME := PoonKang_d2vzw
PRODUCT_DEVICE := d2vzw

endif
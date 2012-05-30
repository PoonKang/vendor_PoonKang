# Inherit AOSP device configuration for supersonic.
$(call inherit-product, device/htc/supersonic/full_supersonic.mk)

# Inherit some common phone stuff.
$(call inherit-product, vendor/PoonKang/configs/common_phone.mk)

# Inherit prebuilt gapps.
$(call inherit-product, vendor/PoonKang/configs/common_gapps.mk)

PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/supersonic

#
# Setup device specific product configuration.
#
PRODUCT_NAME := PoonKang_supersonic
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := supersonic
PRODUCT_MODEL := PC36100
PRODUCT_MANUFACTURER := HTC
# PRODUCT_VENDOR := PoonKang

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_supersonic BUILD_FINGERPRINT=sprint/htc_supersonic/supersonic:2.3.5/GRJ90/239674.3:user/release-keys PRIVATE_BUILD_DESC="4.67.651.3 CL239674 release-keys"

PRODUCT_PACKAGES += \
    Camera

# boot animation
PRODUCT_COPY_FILES += \
	vendor/aokp/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip \
	vendor/aokp/prebuilt/supersonic/camera.qsd8k.so:system/lib/hw/camera.qsd8k.so

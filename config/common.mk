# PoonKang common vendor config

TARGET_CUSTOM_RELEASETOOL :=source vendor/PoonKang/tools/squisher

# Linaro tweaks
TARGET_GCC_VERSION ?= 4.7
TARGET_KERNEL_CUSTOM_TOOLCHAIN := Linaro-$(TARGET_GCC_VERSION)
TARGET_USE_O3 := true

# goo.im overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=$(USER) \
    ro.goo.version=$(shell date +%s)

# Specify apn type
APN_CONF ?= apns-conf-cdma

# Define Paranoid Android Target
ifeq ($(BUILD_TYPE),ParanoidAndroid)
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-linux-androideabi-$(TARGET_GCC_VERSION)
-include vendor/PoonKang/config/paranoid.mk
-include vendor/PoonKang/config/staging.mk
endif

# Define JellyBeer Target
ifeq ($(BUILD_TYPE),JellyBeer)

# Bring in all audio files
include frameworks/base/data/sounds/NewAudio.mk

# Extra Ringtones
include frameworks/base/data/sounds/AudioPackageNewWave.mk

# Include CM audio files
include vendor/cm/config/cm_audio.mk

# Optional CM packages
PRODUCT_PACKAGES += \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam

-include vendor/PoonKang/config/jellybeer.mk
-include vendor/PoonKang/config/staging.mk
endif

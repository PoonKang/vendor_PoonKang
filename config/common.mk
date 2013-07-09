# PoonKang common vendor config

TARGET_CUSTOM_RELEASETOOL :=source vendor/PoonKang/tools/squisher

# goo.im overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=$(USER) \
    ro.goo.version=$(shell date +%s)

# Define Paranoid Android Target
ifeq ($(BUILD_TYPE),ParanoidAndroid)
-include vendor/PoonKang/config/paranoid.mk
endif

# Define JellyBeer Target
ifeq ($(BUILD_TYPE),JellyBeer)
-include vendor/PoonKang/config/jellybeer.mk
endif

# PoonKang common vendor config

# Define Paranoid Android Target
ifeq ($(BUILD_TYPE),ParanoidAndroid)
-include vendor/PoonKang/config/paranoid.mk
endif

# Define JellyBeer Target
ifeq ($(BUILD_TYPE),JellyBeer)
-include vendor/PoonKang/config/jellybeer.mk
endif

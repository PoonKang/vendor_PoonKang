ifneq ($(filter PoonKang_%,$(TARGET_PRODUCT)),)
PRODUCT_MAKEFILES += $(LOCAL_DIR)/$(TARGET_PRODUCT).mk
endif

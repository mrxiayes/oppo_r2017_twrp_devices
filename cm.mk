# Release name
PRODUCT_RELEASE_NAME := r2017

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/oppo/r2017/device_r2017.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := r2017
PRODUCT_NAME := cm_r2017
PRODUCT_BRAND := oppo
PRODUCT_MODEL := r2017
PRODUCT_MANUFACTURER := oppo

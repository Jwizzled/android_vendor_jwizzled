# Inherit AOSP device configuration for hammerhead.
$(call inherit-product, device/lge/hammerhead/full_hammerhead.mk)

# Inherit common product files.
$(call inherit-product, vendor/jwizzled/configs/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := jwizzled_hammerhead
PRODUCT_BRAND := google
PRODUCT_DEVICE := hammerhead
PRODUCT_MODEL := Nexus 5
PRODUCT_MANUFACTURER := LGE

# Build prop fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=hammerhead BUILD_FINGERPRINT="google/hammerhead/hammerhead:4.4.2/KOT49H/937116:user/release-keys" PRIVATE_BUILD_DESC="hammerhead-user 4.4.2 KOT49H 937116 release-keys"

# Generic product
PRODUCT_NAME := banks
PRODUCT_BRAND := banks
PRODUCT_DEVICE := generic

# Local path for prebuilts
LOCAL_PATH:= vendor/banks/prebuilts/common/system

# Common overrides 
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.setupwizard.enterprise_mode=1 \
    ro.com.android.dateformat=MM-dd-yyyy \
    ro.com.android.dataroaming=false

# Common overlays for all devices
PRODUCT_PACKAGE_OVERLAYS += vendor/banks/overlays/common

# Packages needed by all devices
PRODUCT_PACKAGES += \
    Launcher3 \
    Stk \
    Torch \
    VoicePlus

# Cyanogenmod superuser support
SUPERUSER_EMBEDDED := true
SUPERUSER_PACKAGE_PREFIX := com.android.settings.cyanogenmod.superuser

PRODUCT_PACKAGES += \
    Superuser \
    su

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.root_access=3

# Proprietary latinime lib needed for swyping
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/lib/libjni_latinime.so:system/lib/libjni_latinime.so

# Blobs necessary for media effects
PRODUCT_COPY_FILES +=  \
    $(LOCAL_PATH)/vendor/media/LMspeed_508.emd:system/vendor/media/LMspeed_508.emd \
    $(LOCAL_PATH)/vendor/media/PFFprec_600.emd:system/vendor/media/PFFprec_600.emd

# Enable sip+voip on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Backup support for gapps and hosts file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/addon.d/50-rastabackup.sh:system/addon.d/50-rastabackup.sh \
    $(LOCAL_PATH)/bin/backuptool.functions:system/bin/backuptool.functions \
    $(LOCAL_PATH)/bin/backuptool.sh:system/bin/backuptool.sh

# Get the right bootanimation based on product
ifneq ($(filter banks_hammerhead,$(TARGET_PRODUCT)),)
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/bootanimation-1080.zip:system/media/bootanimation.zip
endif

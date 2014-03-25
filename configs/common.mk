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

# Custom audio files

# Alarms
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/audio/alarms/Argon.ogg:system/media/audio/alarms/Argon.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Carbon.ogg:system/media/audio/alarms/Carbon.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Helium.ogg:system/media/audio/alarms/Helium.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Krypton.ogg:system/media/audio/alarms/Krypton.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Neon.ogg:system/media/audio/alarms/Neon.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Oxygen.ogg:system/media/audio/alarms/Oxygen.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Osmium.ogg:system/media/audio/alarms/Osmium.ogg \
    $(LOCAL_PATH)/media/audio/alarms/Platinum.ogg:system/media/audio/alarms/Platinum.ogg
   
# Notifications
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/audio/notifications/Ariel.ogg:system/media/audio/notifications/Ariel.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Carme.ogg:system/media/audio/notifications/Carme.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Ceres.ogg:system/media/audio/notifications/Ceres.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Elara.ogg:system/media/audio/notifications/Elara.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Europa.ogg:system/media/audio/notifications/Europa.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Iapetus.ogg:system/media/audio/notifications/Iapetus.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Io.ogg:system/media/audio/notifications/Io.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Rhea.ogg:system/media/audio/notifications/Rhea.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Salacia.ogg:system/media/audio/notifications/Salacia.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Tethys.ogg:system/media/audio/notifications/Tethys.ogg \
    $(LOCAL_PATH)/media/audio/notifications/Titan.ogg:system/media/audio/notifications/Titan.ogg

# Ringtones
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/audio/ringtones/Callisto.ogg:system/media/audio/ringtones/Callisto.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Dione.ogg:system/media/audio/ringtones/Dione.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Ganymede.ogg:system/media/audio/ringtones/GanyMede.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Luna.ogg:system/media/audio/ringtones/Luna.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Oberon.ogg:system/media/audio/ringtones/Oberon.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Phobos.ogg:system/media/audio/ringtones/Phobos.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/RobotsforEveryone.ogg:system/media/audio/ringtones/RobotsforEveryone.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Sedna.ogg:system/media/audio/ringtones/Sedna.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/SpagnolaOrchestration.ogg:system/media/audio/ringtones/SpagnolaOrchestration.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Titania.ogg:system/media/audio/ringtones/Titania.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Triton.ogg:system/media/audio/ringtones/Triton.ogg \
    $(LOCAL_PATH)/media/audio/ringtones/Umbriel.ogg:system/media/audio/ringtones/Umbriel.ogg

# Ui
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/audio/ui/camera_click.ogg:system/media/audio/ui/camera_click.ogg \
    $(LOCAL_PATH)/media/audio/ui/camera_focus.ogg:system/media/audio/ui/camera_focus.ogg \
    $(LOCAL_PATH)/media/audio/ui/Dock.ogg:system/media/audio/ui/Dock.ogg \
    $(LOCAL_PATH)/media/audio/ui/Effect_Tick.ogg:system/media/audio/ui/Effect_Tick.ogg \
    $(LOCAL_PATH)/media/audio/ui/KeypressDelete.ogg:system/media/audio/ui/KeypressDelete.ogg \
    $(LOCAL_PATH)/media/audio/ui/KeypressInvalid.ogg:system/media/audio/ui/KeypressInvalid.ogg \
    $(LOCAL_PATH)/media/audio/ui/KeypressReturn.ogg:system/media/audio/ui/KeypressReturn.ogg \
    $(LOCAL_PATH)/media/audio/ui/KeypressSpacebar.ogg:system/media/audio/ui/KeypressSpacebar.ogg \
    $(LOCAL_PATH)/media/audio/ui/KeypressStandard.ogg:system/media/audio/ui/KeypressStandard.ogg \
    $(LOCAL_PATH)/media/audio/ui/Lock.ogg:system/media/audio/ui/Lock.ogg \
    $(LOCAL_PATH)/media/audio/ui/LowBattery.ogg:system/media/audio/ui/LowBattery.ogg \
    $(LOCAL_PATH)/media/audio/ui/Undock.ogg:system/media/audio/ui/Undock.ogg \
    $(LOCAL_PATH)/media/audio/ui/Unlock.ogg:system/media/audio/ui/Unlock.ogg \
    $(LOCAL_PATH)/media/audio/ui/VideoRecord.ogg:system/media/audio/ui/VideoRecord.ogg \
    $(LOCAL_PATH)/media/audio/ui/WirelessChargingStarted.ogg:system/media/audio/ui/WirelessChargingStarted.ogg

# gapps prebuilt /system/apps
PRODUCT_COPY_FILES += \
    vendor/PoonKang/prebuilt/gapps/app/ChromeBookmarksSyncAdapter.apk:system/app/ChromeBookmarksSyncAdapter.apk \
    vendor/PoonKang/prebuilt/gapps/app/GalleryGoogle.apk:system/app/GalleryGoogle.apk \
    vendor/PoonKang/prebuilt/gapps/app/GenieWidget.apk:system/app/GenieWidget.apk \
    vendor/PoonKang/prebuilt/gapps/app/GoogleBackupTransport.apk:system/app/GoogleBackupTransport.apk \
    vendor/PoonKang/prebuilt/gapps/app/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter.apk \
    vendor/PoonKang/prebuilt/gapps/app/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter.apk \
    vendor/PoonKang/prebuilt/gapps/app/GoogleFeedback.apk:system/app/GoogleFeedback.apk \
    vendor/PoonKang/prebuilt/gapps/app/GoogleLoginService.apk:system/app/GoogleLoginService.apk \
    vendor/PoonKang/prebuilt/gapps/app/GooglePartnerSetup.apk:system/app/GooglePartnerSetup.apk \
    vendor/PoonKang/prebuilt/gapps/app/GoogleQuickSearchBox.apk:system/app/GoogleQuickSearchBox.apk \
    vendor/PoonKang/prebuilt/gapps/app/GoogleServicesFramework.apk:system/app/GoogleServicesFramework.apk \
    vendor/PoonKang/prebuilt/gapps/app/GoogleTTS.apk:system/app/GoogleTTS.apk \
    vendor/PoonKang/prebuilt/gapps/app/MarketUpdater.apk:system/app/MarketUpdater.apk \
    vendor/PoonKang/prebuilt/gapps/app/MediaUploader.apk:system/app/MediaUploader.apk \
    vendor/PoonKang/prebuilt/gapps/app/NetworkLocation.apk:system/app/NetworkLocation.apk \
    vendor/PoonKang/prebuilt/gapps/app/OneTimeInitializer.apk:system/app/OneTimeInitializer.apk \
    vendor/PoonKang/prebuilt/gapps/app/Phonesky.apk:system/app/Phonesky.apk \
    vendor/PoonKang/prebuilt/gapps/app/SetupWizard.apk:system/app/SetupWizard.apk \
    vendor/PoonKang/prebuilt/gapps/app/Talk.apk:system/app/Talk.apk \
    vendor/PoonKang/prebuilt/gapps/app/VoiceSearch.apk:system/app/VoiceSearch.apk

# gapps prebuilt /system/framework
PRODUCT_COPY_FILES += \
    vendor/PoonKang/prebuilt/gapps/framework/com.google.android.maps.jar:system/framework/com.google.android.maps.jar \
    vendor/PoonKang/prebuilt/gapps/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/PoonKang/prebuilt/gapps/framework/com.google.widevine.software.drm.jar:system/framework/com.google.widevine.software.drm.jar

# gapps prebuilt libs & addon.d
PRODUCT_COPY_FILES += \
    vendor/PoonKang/prebuilt/gapps/lib/libfilterpack_facedetect.so:system/lib/libfilterpack_facedetect.so \
    vendor/PoonKang/prebuilt/gapps/lib/libflint_engine_jni_api.so:system/lib/libflint_engine_jni_api.so \
    vendor/PoonKang/prebuilt/gapps/lib/libfrsdk.so:system/lib/libfrsdk.so \
    vendor/PoonKang/prebuilt/gapps/lib/libgcomm_jni.so:system/lib/libgcomm_jni.so \
    vendor/PoonKang/prebuilt/gapps/lib/libpicowrapper.so:system/lib/libpicowrapper.so \
    vendor/PoonKang/prebuilt/gapps/lib/libspeexwrapper.so:system/lib/libspeexwrapper.so \
    vendor/PoonKang/prebuilt/gapps/lib/libvideochat_jni.so:system/lib/libvideochat_jni.so \
    vendor/PoonKang/prebuilt/gapps/lib/libvideochat_stabilize.so:system/lib/libvideochat_stabilize.so \
    vendor/PoonKang/prebuilt/gapps/lib/libvoicesearch.so:system/lib/libvoicesearch.so \
    vendor/PoonKang/prebuilt/gapps/addon.d/70-gapps.sh:system/addon.d/70-gapps.sh

# gapps prebuilt permissions & g.prop
PRODUCT_COPY_FILES += \
    vendor/PoonKang/prebuilt/gapps/etc/permissions/com.google.android.maps.xml:system/etc/permissions/com.google.android.maps.xml \
    vendor/PoonKang/prebuilt/gapps/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/PoonKang/prebuilt/gapps/etc/permissions/com.google.widevine.software.drm.xml:system/etc/permissions/com.google.widevine.software.drm.xml \
    vendor/PoonKang/prebuilt/gapps/etc/permissions/features.xml:system/etc/permissions/features.xml \
    vendor/PoonKang/prebuilt/gapps/etc/g.prop:system/etc/g.prop

# gapps prebuilt tts files
PRODUCT_COPY_FILES += \
    vendor/PoonKang/prebuilt/gapps/tts/lang_pico/de-DE_gl0_sg.bin:system/tts/lang_pico/de-DE_gl0_sg.bin \
    vendor/PoonKang/prebuilt/gapps/tts/lang_pico/de-DE_ta.bin:system/tts/lang_pico/de-DE_ta.bin \
    vendor/PoonKang/prebuilt/gapps/tts/lang_pico/es-ES_ta.bin:system/tts/lang_pico/es-ES_ta.bin \
    vendor/PoonKang/prebuilt/gapps/tts/lang_pico/es-ES_zl0_sg.bin:system/tts/lang_pico/es-ES_zl0_sg.bin \
    vendor/PoonKang/prebuilt/gapps/tts/lang_pico/fr-FR_nk0_sg.bin:system/tts/lang_pico/fr-FR_nk0_sg.bin \
    vendor/PoonKang/prebuilt/gapps/tts/lang_pico/fr-FR_ta.bin:system/tts/lang_pico/es-fr-FR_ta.bin \
    vendor/PoonKang/prebuilt/gapps/tts/lang_pico/it-IT_cm0_sg.bin:system/tts/lang_pico/es-it-IT_cm0_sg.bin \
    vendor/PoonKang/prebuilt/gapps/tts/lang_pico/it-IT_ta.bin:system/tts/lang_pico/fr-it-IT_ta.bin

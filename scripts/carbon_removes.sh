if [ "$BUILD_TYPE" = Carbon ] ; then

DELETE_LIBS="libc_malloc_debug_leak.so libc_malloc_debug_qemu.so"
DELETE_FONTS="MTLmr3m.ttf"
DELETE_MEDIA="*.qmg"

# Delete unnecessary libraries
( cd $REPACK/ota/system/lib; echo $DELETE_LIBS | xargs rm -f; )

# Delete Offline charging mode files
( cd $REPACK/ota/system/media; echo $DELETE_MEDIA | xargs rm -f; )

if [ "$TARGET_PRODUCT_FINAL" != "infuse4g" ]
then
# No need for modem.bin
rm -f $REPACK/ota/modem.bin
fi

# No need for media/video
rm -rf $REPACK/ota/system/media/video

# Delete Unnecessary Fonts
( cd $REPACK/ota/system/fonts; echo $DELETE_FONTS | xargs rm -f; )

# No need for tts
rm -rf $REPACK/ota/system/tts

# No need for srec
rm -rf $REPACK/ota/system/usr/srec
rm -rf $REPACK/ota/system/etc/recovery-resource.dat

# Add changelog
. $ANDROID_BUILD_TOP/vendor/carbon/tools/changelog

fi
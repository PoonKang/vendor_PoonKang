do_it () {
case "$1" in
   gcc)
       export LINARO_BUILD=false;;
   linaro)
       export LINARO_BUILD=true;;
esac

for combo in `cat vendor/PoonKang/build-targets.txt | grep -v ^# | grep -v ^$`; do
    add_lunch_combo PoonKang_$combo
done

echo && echo "	Setting up for $BUILD_TYPE... Linaro Active = $LINARO_BUILD" && echo
}

if [ -e vendor/pa ] && [ vendor/PoonKang ] ; then
    export BUILD_TYPE=ParanoidAndroid
    do_it linaro
elif [ -e vendor/cm ] && [ vendor/PoonKang ] ; then
    export BUILD_TYPE=JellyBeer
    do_it linaro
fi
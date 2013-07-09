if [ -e vendor/pa ] && [ vendor/PoonKang ] ; then
export BUILD_TYPE=ParanoidAndroid
export LINARO_BUILD=true
for combo in `cat vendor/PoonKang/build-targets.txt | grep -v ^# | grep -v ^$`; do
    add_lunch_combo pa_$combo
done
elif [ -e vendor/cm ] && [ vendor/PoonKang ] ; then
export BUILD_TYPE=JellyBeer
export LINARO_BUILD=true
for combo in `cat vendor/PoonKang/build-targets.txt | grep -v ^# | grep -v ^$`; do
    add_lunch_combo cm_$combo
done
fi

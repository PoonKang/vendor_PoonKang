if [ -e vendor/aokp ]; then
add_lunch_combo PoonKang_fascinatemtd-userdebug
add_lunch_combo PoonKang_supersonic-userdebug
elif [ -e vendor/cm ]; then
add_lunch_combo cm_fascinatemtd-userdebug
add_lunch_combo cm_supersonic-userdebug
fi

for combo in $(curl -s https://raw.githubusercontent.com/Cosmic-OS/platform_vendor_cos/pulsar-release/cos.devices  | sed -e 's/#.*$//' | awk '{printf "simplix_%s-userdebug\n", $1}')
do
    add_lunch_combo $combo
done

mkdir /flashlight
ln -s /sys/devices/virtual/camera/rear/rear_flash /flashlight/brightness
echo 1 > /flashlight/max_brightness

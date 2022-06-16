#!/bin/sh
mkdir -p /flashlight
cd /flashlight
ln -s /sys/devices/virtual/camera/rear/rear_flash brightness
echo 1 > max_brightness


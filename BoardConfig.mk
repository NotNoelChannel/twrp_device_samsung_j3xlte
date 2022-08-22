# Copyright (C) 2022 NotNoelChannel
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

TARGET_OTA_ASSERT_DEVICE := j3xnlte,j3xnltexx,j2xlte,j2xltedd,j3xlte

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := SC9830I
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := sc8830

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7

BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --dt device/samsung/j3xlte/prebuilt/dt.img

# prebuilt kernel
TARGET_PREBUILT_KERNEL := device/samsung/j3xlte/prebuilt/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 20971520
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5272223744
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_PERSISTIMAGE_PARTITION_SIZE := 10485760
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
# TWRP
TW_THEME := portrait_hdpi
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TW_NO_EXFAT_FUSE := true
TW_NEW_ION_HEAP := true
TW_INCLUDE_CRYPTO := true
BOARD_SUPPRESS_SECURE_ERASE := true
TW_DEVICE_VERSION := 0_notnoelchannel
RECOVERY_SDCARD_ON_DATA := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
# Paths
TARGET_RECOVERY_DEVICE_DIRS := device/samsung/j3xlte
BOARD_CUSTOM_RECOVERY_KEYMAPPING := device/samsung/j3xlte/recovery/recovery_keys.c
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/j3xlte/recovery/recovery.fstab
################################################
# display
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162
RECOVERY_GRAPHICS_FORCE_SINGLE_BUFFER := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone1/temp"
BOARD_RECOVERY_SWIPE := true
TW_MTP_DEVICE := "/dev/mtp_usb"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/20200000.usb/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
############################################
# shrp
SHRP_EXPRESS              := true
SHRP_LITE                 := true
SHRP_MAINTAINER           := notnoelchannel
SHRP_OTG                  := /usb_otg
SHRP_INTERNAL             := /sdcard
SHRP_EXTERNAL             := /external_sd
SHRP_FLASH                := true
SHRP_REC                  := /dev/block/platform/sprd-sdhci.3/by-name/RECOVERY
SHRP_CUSTOM_FLASHLIGHT    := true
SHRP_FONP_1               := /sys/devices/virtual/camera/rear/rear_flash
SHRP_FLASH_MAX_BRIGHTNESS := 1
SHRP_DEVICE_CODE          := j3xnlte


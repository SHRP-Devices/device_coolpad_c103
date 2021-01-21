#
# Copyright (C) 2016 The OmniRom Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# OTA Assert
TARGET_OTA_ASSERT_DEVICE := c103

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8952
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno510

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53.a57

TARGET_USES_64_BIT_BINDER := true

# Prebuild Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x00000100
TARGET_PREBUILT_KERNEL := device/coolpad/c103/prebuilt/Image.gz-dtb


# Kernel Source
#BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci earlyprintk loop.max_part=7
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
#BOARD_KERNEL_BASE := 0x80000000
#BOARD_KERNEL_PAGESIZE := 2048
#BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --tags_offset 0x00000100
#BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_HEADER_ARCH := arm64

#TARGET_KERNEL_SOURCE := kernel/coolpad/msm8976
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
#TARGET_KERNEL_CONFIG := lineage_c106_defconfig

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2576504320
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2499394560
BOARD_VENDORIMAGE_PARTITION_SIZE := 536870912
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USES_VENDORIMAGE := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USES_MKE2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Full disk encryption
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TARGET_HW_DISK_ENCRYPTION := true

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := "160"
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_CRYPTO := true
TW_USE_TOOLBOX := true
TW_OREO_MR1_F2FS := true
TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_NTFS_3G := true
TW_SKIP_COMPATIBILITY_CHECK := true

#Ignore Missing Dependencies
ALLOW_MISSING_DEPENDENCIES=true

#VIRTUAL WATCH FLAGS
#TW_X_OFFSET := 340
#TW_Y_OFFSET := 1120
#TW_W_OFFSET := -630
#TW_H_OFFSET := -1120

#SHRP_Variables
SHRP_PATH := device/coolpad/c103
SHRP_MAINTAINER := epicX
SHRP_DEVICE_CODE := c103
SHRP_EDL_MODE := 1
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usbotg
SHRP_REC := /dev/block/bootdevice/by-name/recovery
SHRP_REC_TYPE := Treble
SHRP_DEVICE_TYPE := A-Only
SHRP_FLASH := 1
SHRP_EXPRESS := true
SHRP_OFFICIAL := true
SHRP_DARK := true
#SHRP_ALT_REBOOT := true
#SHRP_NOTCH := true
#SHRP_FONP_1 := /sys/class/leds/led:torch_0/brightness
#SHRP_FONP_2 := /sys/class/leds/led:torch_1/brightness
#SHRP_FONP_3 := /sys/class/leds/led:switch/brightness
#SHRP_FLASH_MAX_BRIGHTNESS := 200
#SHRP_STATUSBAR_RIGHT_PADDING := 20
#SHRP_STATUSBAR_LEFT_PADDING := 20
#SHRP_AB := true

#NEWFLAGS

# Setting up custom addons folder
SHRP_EXTERNAL_ADDON_PATH := "device/coolpad/c103/prebuilt/"

# Added treblize addon
SHRP_EXTERNAL_ADDON_1_NAME := "Add treble compatibility"
SHRP_EXTERNAL_ADDON_1_INFO := "This patch will add treble compatibility to your device. Before doing this operation wipe your system partition. Do carefully"
SHRP_EXTERNAL_ADDON_1_FILENAME := "treblize.zip"
SHRP_EXTERNAL_ADDON_1_BTN_TEXT := "Confirm"
SHRP_EXTERNAL_ADDON_1_SUCCESSFUL_TEXT := "Treblized"
SHRP_INC_IN_REC_EXTERNAL_ADDON_1 := true

# Added detreblize addon
SHRP_EXTERNAL_ADDON_2_NAME := "Remove treble compatibility"
SHRP_EXTERNAL_ADDON_2_INFO := "This patch will remove treble compatibility from your device. Before doing this operation wipe system and vendor partition. Do carefully"
SHRP_EXTERNAL_ADDON_2_FILENAME := "detreblize.zip"
SHRP_EXTERNAL_ADDON_2_BTN_TEXT := "Confirm"
SHRP_EXTERNAL_ADDON_2_SUCCESSFUL_TEXT := "Detreblized"
SHRP_INC_IN_REC_EXTERNAL_ADDON_2 := true

# Including Magisk into recovery ramdisk
INC_IN_REC_MAGISK := true

# Including default addons into recovery ramdisk
INC_IN_REC_ADDON_1 := true
INC_IN_REC_ADDON_2 := true
INC_IN_REC_ADDON_3 := true
INC_IN_REC_ADDON_4 := true

#SHRP_SKIP_DEFAULT_ADDON_4 := true

SHRP_NO_SAR_AUTOMOUNT := true


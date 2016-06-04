USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/oppo/r2017/BoardConfigVendor.mk

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := r2017

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := krait
ARCH_ARM_HAVE_TLS_REGISTER := true

# Flags
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
TARGET_PREBUILT_KERNEL := device/oppo/r2017/kernel

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=r2017 user_debug=31 msm_rtb.filter=0x37 androidboot.bootdevice=msm_sdcc.1 androidboot.selinux=disabled
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --dt device/oppo/r2017/dt.img --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x01e00000

# USB Mounting
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_THEME := portrait_mdpi
DEVICE_RESOLUTION := 540x960
RECOVERY_SDCARD_ON_DATA := true
TW_INCLUDE_CRYPTO := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# fix this up by examining /proc/mtd on a running device
BOARD_HAS_LOW_RESOLUTION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 15728640 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 15728640 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3758096384 
BOARD_FLASH_BLOCK_SIZE := 131072

TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN


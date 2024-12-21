#!/bin/bash

base64 -d device/xiaomi/alioth/configs/camera/secret > device/xiaomi/alioth/configs/camera/st_license.lic

# ROM source patches

# Kernel & Vendor Sources
git clone https://github.com/SM8XXX/android_device_xiaomi_sm8250-common.git device/xiaomi/sm8250-common
git clone https://github.com/SM8XXX/vendor_xiaomi_sm8250-common.git vendor/xiaomi/sm8250-common
git clone https://github.com/bntxperses/proprietary_vendor_xiaomi_alioth.git vendor/xiaomi/alioth
git clone https://github.com/bntxperses/kernel_xiaomi_sm825X.git kernel/xiaomi/sm8250
git clone https://github.com/SM8XXX/hardware_xiaomi.git hardware/xiaomi
rm -rf frameworks/av
git clone https://github.com/bntxperses/frameworks_av.git frameworks/av
rm -rf packages/resources/devicesettings
git clone https://github.com/PocoF3Releases/packages_resources_devicesettings.git packages/resources/devicesettings 

# MemeCamera
git clone https://gitlab.com/Eifal/vendor_miui_camera.git -b aosp-14  vendor/xiaomi/camera

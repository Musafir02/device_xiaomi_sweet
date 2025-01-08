echo "Starting to clone stuffs needed to build for Sweet"

# Common device tree (chipset tree)
echo 'Cloning Common Tree'
if [ ! -d device/xiaomi/sm6150-common ]; then
   git clone --depth=1 https://github.com/Musafir02/device_xiaomi_sm6150-common.git -b 15 device/xiaomi/sm6150-common
fi
# Kernel
echo 'Cloning Kernel Tree'
if [ ! -d kernel/xiaomi/sm6150 ]; then
   git clone --depth=1 https://github.com/GokuSan2/kernel_xiaomi_sm6150.git -b sleepy kernel/xiaomi/sm6150
fi

# Main vendor tree
echo 'Cloning Vendor Tree'
if [ ! -d vendor/xiaomi/sweet ]; then
   git clone --depth=1 https://github.com/Musafir02/vendor_xiaomi_sweet.git -b 15 vendor/xiaomi/sweet
fi

# Common vendor tree
echo 'Cloning Common Vendor Tree'
if [ ! -d vendor/xiaomi/sm6150-common ]; then
   git clone --depth=1 https://github.com/Musafir02/vendor_xiaomi_sm6150-common.git -b 15 vendor/xiaomi/sm6150
fi
   
# Xiaomi Leica Camera
echo 'Cloning Leica Camera'
if [ ! -d vendor/xiaomi/sweet-miuicamera ]; then
   git clone --depth=1 https://gitlab.com/unmoved21/sweet-miuicamera.git -b leica-holybear vendor/xiaomi/sweet-miuicamera
fi

# Xiaomi hardware tree
echo 'Cloning Hardware Tree'
if [ ! -d hardware/xiaomi/* ]; then
   git clone --depth=1 https://github.com/Musafir02/hardware_xiaomi.git -b 15 hardware/xiaomi
fi

echo "Delete vendorsetup.sh from device tree once this is done."

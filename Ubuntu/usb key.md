# List usb devices
lsusb

# Identify device
ls /dev before and after plug

# list partitions
cfdisk /dev/sdX

# Mount device
mkdir ~/usbkey
mount /dev/sdX1 ~/usbkey

# Delete previous partition table
dd if=/dev/zero of=/dev/sdg bs=512 count=1

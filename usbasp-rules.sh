#!/bin/bash
typ1="USBasp"
typ2="STK500"
file_name="85-USBasp.rules"
echo 'Setting the access rights to the USB port for the programmer '$typ1', '$typ2', ...'
touch $file_name
echo "SUBSYSTEM=="usb", ATTR{product}=="USBasp", ATTR{idProduct}=="05dc", ATTRS{idVendor}=="16c0", MODE="0666"" > $file_name
echo "ATTRS{idProduct}=="d739", MODE="0666", GROUP="users"" >> $file_name 
sudo cp $file_name /etc/udev/rules.d/
echo 'File '$file_name' copied to the directory:  /etc/udev/rules.d/'
echo '\n:'
cat /etc/udev/rules.d/$file_name
echo '\n:\nBye !!'
#2021-06-09

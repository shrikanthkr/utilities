#! /bin/bash
set -x 
xhost local:MYUSERNAME
export DISPLAY=:0.0
modprobe usbserial vendor=0x19d2 product=0xffe9
logger "Reliance started"
if zenity --question --text "You want to connect your reliance card?"; then
notify-send -u normal  --expire-time=2000 "Hello Shrikanth" "Ur internet via Reliance is connecting\!"
wvdial 
fi


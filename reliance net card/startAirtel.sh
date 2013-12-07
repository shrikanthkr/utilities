#! /bin/bash
set -x 
xhost local:MYUSERNAME
export DISPLAY=:0.0
modprobe usbserial vendor=0x12d1 product=0x1446
logger "Airtel started"
if zenity --question --text "You want to connect your Airtel card?"; then
notify-send -u normal  --expire-time=2000 "Hello Shrikanth" "Ur internet via Airtel is connecting\!"
wvdial wvdial-airtel.conf
fi


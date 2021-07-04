#!/bin/sh


LOG="/tmp/bluetooth.log"
blue=$(bluetoothctl  power on &> $LOG )
#notify-send  "Bluetooth" " $blue " 
connect=$(bluetoothctl connect E8:EC:A3:CC:78:6D &>> $LOG)
#notify-send "Bluetooth" " $connect"   &> /tmp/bluetooth.log

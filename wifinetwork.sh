#!/bin/bash


bssid=$(nmcli device wifi list | sed -n '1!p' | cut -b 9- | rofi -dmenu -p "Run: " |cut -d' ' -f1)
pass=$(echo "" | rofi -dmenu -p "Enter password: ")

nmcli device wifi connect $bssid password $pass

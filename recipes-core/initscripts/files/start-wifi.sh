#!/bin/sh
echo "execute start wifi script AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
killall wpa_supplicant
rfkill unblock all
wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant.conf -D nl80211
udhcpc -i wlan0
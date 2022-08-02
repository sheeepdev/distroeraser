#!/bin/bash

gum style \
--foreground 110 --border normal --border-foreground 110 \
--align center --width 50 --margin "1 2" --padding "2 4" \
'THE DISTROERASER' 'is a script erases your disk to get it ready for another OS/distro!'
sleep 1
echo "It is similar to other disk erasers but its much simpler because it uses dd"
sleep 1
echo "Go on and pick a disk you want to erase:"
DISK=$(lsblk -d | tail -n+2 | cut -d" " -f1 | gum choose --limit 1)
echo "Ok, erasing disk $DISK"
gum style \
--foreground 210 --border normal --border-foreground 210 \
--align center --width 50 --margin "1 2" --padding "2 4" \
'IM NOT RESPONSIBLE FOR ANY UNWANTED ERASING. USE THIS SCRIPT AT YOUR OWN RISK'
sleep 1
gum confirm "Are you sure you want to permanently erase your system?" && gum spin -s minidot --title 'Erasing the system...' dd if=/dev/zero of="/dev/$DISK" bs=1M status=progress || echo "Cancelled"

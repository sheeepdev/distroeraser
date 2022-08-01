#!/bin/bash

gum style \
--foreground 110 --border normal --border-foreground 110 \
--align center --width 50 --margin "1 2" --padding "2 4" \
'THE DISTROERASER' 'is a script erases your disk to get it ready for another OS/distro!'
sleep 1
echo "It is similar to other disk erasers but its much simpler because it uses dd"
sleep 1
gum style \
--foreground 210 --border normal --border-foreground 210 \
--align center --width 50 --margin "1 2" --padding "2 4" \
'IM NOT RESPONSIBLE FOR ANY UNWANTED ERASING. USE THIS SCRIPT AT YOUR OWN RISK'
sleep 1
gum confirm "Are you sure you want to permanently erase your system?" && echo "Erasing the drive in:" || echo "Cancelled"
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
sleep 1
gum spin -s minidot --title 'Erasing the system...' dd if=/dev/zero of=/dev/sda bs=1M status=progress

#!/bin/bash

figlet "THE DISTROERASER"
echo "This script erases your disk to get it ready for another OS/distro!"
sleep 1
echo "It is similar to other disk erasers but its much simpler because it uses dd"
sleep 1
echo "IM NOT RESPONSIBLE FOR ANY UNWANTED ERASING. USE THIS SCRIPT AT YOUR OWN RISK"
sleep 1
read -p "Press any key to continue"
echo "Erasing the drive in:"
sleep 1
echo "3..."
sleep 1
echo "2..."
sleep 1
echo "1..."
sleep 1
echo "Erasing the system..."
dd if=/dev/zero of=/dev/sda bs=1M status=progress

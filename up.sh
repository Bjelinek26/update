#!/bin/bash

TTY=$(tty)

IFS="/"

read -r NOTHIN DEV PTS NUM <<< $TTY

NEW_PTS=$(($NUM + 1))

sudo apt update

gnome-terminal --window

apt list --upgradable >> /dev/pts/"${NEW_PTS}"
 
sudo apt upgrade -y

sudo apt autoremove -y

read -p "press 1 to reboot, 2 to quit" ANS

case $ANS in
	1)
	reboot
	;;
	2)
	exit 1
	;;
	3)
	poweroff
	;;
esac

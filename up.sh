#!/bin/bash

TTY=$(tty)

IFS="/"

read -r NOTHIN DEV PTS NUM <<< TTY

NEW_PTS=$(($NUM + 1))

sudo apt update

gnome-terminal --window &

apt list --upgradable >> /dev/pts/"${NEW_PTS}"
 
sudo apt update -y
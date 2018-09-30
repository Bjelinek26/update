#!/bin/bash

sudo apt update

terminology &

apt list --upgradable >> /dev/pts/1
 
sudo apt update -y
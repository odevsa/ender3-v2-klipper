#!/bin/bash

tmp_dir=/tmp/printer

echo "=> Installing dependencies..."
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git avahi-daemon avahi-utils -y

echo "=> Installing Kiauh..."
git clone https://github.com/dw-0/kiauh.git ~/kiauh &> /dev/null

echo "=> Cloning config into $tmp_dir..."
sudo rm -rf "$tmp_dir"
git clone https://github.com/odevsa/ender3-v2-klipper.git "$tmp_dir" &> /dev/null

echo "=> Coping config into ~/printer_data/..."
mkdir -p ~/printer_data/
cp -R "$tmp_dir/config/" ~/printer_data/

#!/bin/bash

tmp_dir=/tmp/printer

echo "=> Installing dependencies..."
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y

echo "=> Cloning config into $tmp_dir..."
sudo rm -rf "$tmp_dir"
git clone https://github.com/odevsa/ender3-v2-klipper.git "$tmp_dir"

echo "=> Coping config into ~/printer_data/..."
mkdir -p ~/printer_data/
cp -R "$tmp_dir/config/" ~/printer_data/

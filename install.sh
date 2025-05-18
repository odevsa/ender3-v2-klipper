#!/bin/bash

tmp_dir=/tmp/printer

if ! command -v git >/dev/null 2>&1; then
  echo "=> Installing dependencies..."
  sudo apt-get update
  sudo apt-get upgrade -y
  sudo apt-get install git -y
fi

echo "=> Cloning config into $tmp_dir..."
sudo rm -rf "$tmp_dir"
git clone https://github.com/odevsa/ender3-v2-klipper.git "$tmp_dir"

mkdir -p ~/printer_data/
echo "=> Backup old config..."
mv ~/printer_data/config/ ~/printer_data/config.backup/ >/dev/null 2>&1
echo "=> Coping config into ~/printer_data/..."
cp -R "$tmp_dir/config/" ~/printer_data/

# Ender3 V2 Klipper

## Hardware

- Ender 3 V2
- OrangePi Zero 2W
- 3.5" TFT SPI Display Touchscreen
- Logitech Webcam
- Input Shaping (RP2040 Zero + ADXL345)

## Software

- Klipper
- KlipperScreen
- Moonraker
- Mainsail
- Crowsnest

## Wiring

- **Ender3 V2**
  <br />PB11 = PIN 11 UART5_TX - PH2 (226)
  <br />PB10 = PIN 13 UART5_RX - PH3 (227)

- **TFT SPI ILI9488**
  <br />VCC = PIN 17 - 3.3v
  <br />GND = PIN 20 - GND
  <br />CS = PIN 24 - PH5 (229)
  <br />RESET = PIN 22 - PI6 (262)
  <br />DC/RS = PIN 18 - PH4 (228)
  <br />MOSI = PIN 19 - PH7 (231)
  <br />SCK = PIN 23 - PH6 (230)
  <br />LED = PIN 17 - 3.3v
  <br />MISO = Not used

## Dependencies

```
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install git -y
```

## Klipper

**Kiauh**

```
git clone https://github.com/dw-0/kiauh.git ~/kiauh
~/kiauh/kiauh.sh
```

Install:

- Klipper
- KlipperScreen
- Moonraker
- Mainsail
- Crowsnest

## Automatic Installation

```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/odevsa/ender3-v2-klipper/main/install.sh)"
```

## Manual Installation

```
git clone https://github.com/odevsa/ender3-v2-klipper.git /tmp/printer
mv ~/printer_data/config ~/printer_data/config.backup
cp -R /tmp/printer/config/ ~/printer_data/
```

## /boot/armbianEnv.txt

```

```

## Extra

**Delay to boot eth0 verification**

```
sudo systemctl disable systemd-networkd-wait-online.service
sudo systemctl mask systemd-networkd-wait-online.service
```

**Change Hostname**
Change these files `orangepizero2w` to `printer`

```
sudo nano /etc/hostname
sudo nano /etc/hosts
```

**Avahi**

```
sudo apt-get install avahi-daemon avahi-utils -y
```

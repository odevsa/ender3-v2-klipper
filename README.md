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
sudo apt-get install git avahi-daemon avahi-utils -y
```

## /boot/armbianEnv.txt

```

```

## Klipper Installation

```
git clone https://github.com/dw-0/kiauh.git ~/kiauh
./kiauh/kiauh.sh
```

On interface, install

- Klipper
- KlipperScreen
- Moonraker
- Mainsail
- Crowsnest

## Config

```
git clone https://github.com/odevsa/ender3-v2-klipper.git /tmp/ender3-v2-klipper
mv ~/printer_data/config ~/printer_data/config.bkp
cp -R /tmp/ender3-v2-klipper/config/ ~/printer_data/
sudo reboot
```

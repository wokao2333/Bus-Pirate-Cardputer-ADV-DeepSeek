#!/bin/bash
set -e

port="${1:-}"

if [ -z "${port}" ]; then
  case "$(uname -s)" in
    Darwin*)
      port="$(ls /dev/cu.usbmodem* /dev/cu.wchusbserial* /dev/cu.SLAB_USBtoUART* 2>/dev/null | head -n 1 || true)"
      ;;
    Linux*)
      port="$(ls /dev/ttyACM* /dev/ttyUSB* 2>/dev/null | head -n 1 || true)"
      ;;
    MINGW*|MSYS*|CYGWIN*)
      port="${ESPPORT:-COM3}"
      ;;
  esac
fi

if [ -z "${port}" ]; then
  echo "No serial port found. Pass the port as the first argument or set ESPPORT."
  exit 1
fi

esptool.py --chip esp32s3 --port "${port}" --baud 921600 \
  --before default_reset --after hard_reset write_flash -z \
  --flash_mode qio --flash_freq 80m --flash_size 8MB \
  0x0 bit_pirate_cardputer_adv_deepseek_factory_0x0.bin

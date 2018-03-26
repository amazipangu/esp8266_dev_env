#!/bin/sh
# $1 ホストのシリアルデバイス

echo 'ESP8266の初期化を開始します。'
docker run -it --rm --name esptool --device=$1 esptool esptool.py --port $1 erase_flash

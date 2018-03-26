#!/bin/sh

# $1 ホストのシリアルデバイス
# $2 ファームウェアを書き込む際のバンドレート

echo 'ファームウェアの書き込みを開始します。'
docker run -it --rm --name esptool --device=$1 esptool esptool.py --port $1 --baud $2 write_flash --flash_size=detect 0 esp8266-20171101-v1.9.3.bin

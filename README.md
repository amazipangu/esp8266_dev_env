# esp8266_dev_env

2018年03月29日（木）【サポーターズCoLab勉強会】PythonとESP8266で始めるIoT入門

[ESP8266EX](https://www.espressif.com/en/products/hardware/esp-wroom-02/overview) 上に [MicroPython](https://docs.micropython.org/en/latest/esp8266/esp8266/tutorial/intro.html) を書き込み、プログラミングするための環境構築ツール。

## 使用しているツール

* [Docker Community Edition](https://www.docker.com/community-edition)
* [MicroPython Firmware](http://micropython.org/download#esp8266)
* [esptool.py](https://github.com/espressif/esptool)

## 使い方

下記の手順に従って、ターミナル上で操作をお願いします。
Windowsを使っている方は、 [Git for Windows](https://gitforwindows.org/) をインストールしてから進めてください。

### 前提条件

* ESP8266に必要な素子を配線済みであること

1. 自分の端末にレポジトリをcloneします。

```
git clone https://github.com/amazipangu/esp8266_dev_env.git
```

2. cloneしたらプロジェクトディレクトリ内に移動します。

```
cd esp8266_dev_env
```

3. Dockerイメージをビルドします。

```
sh esptool/buid.sh
```

4. ESP8266のファームウェアを初期化します。

```
sh esptool/flash.sh
```

5. ESP8266にMicroPythonのファームウェアを書き込みます。

```
sh esptool/write.sh
```

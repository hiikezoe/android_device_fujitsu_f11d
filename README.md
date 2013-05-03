# B2G for F-11D

## 概要

B2G for F-11Dは、オリジナルのAndroid環境を残したままインストールできます。

いくつかの機能はB2Gではまだ利用できませんが、B2G用Webアプリを実機でテストしたいという要望には十分応えられるはずです。

## ダウンロード
<https://drive.google.com/folderview?id=0B-JRBuba3UhLWDlmOFN3SkNvWDQ&usp=sharing>

## インストール
1. fastbootを起動

        $ adb reboot bootloader

2. recovery領域にB2Gのブートイメージを焼く

        $ fastboot flash recovery boot.img

3. CWM Recoveryを起動

        $ fastboot boot recovery.img

4. system領域、data領域にB2Gのファイルをコピー

        $ adb shell cp /system/media/bootanimation.zip /data/local/bootanimation.zip
        $ adb push userdata.tar.gz /
        $ adb push system.tar.gz /
        $ adb shell tar zxvf /userdata.tar.gz -C /
        $ adb shell tar zxvf /system.tar.gz -C /
        $ adb shell umount /system
        $ adb shell umount /data

## ソースコードからのビルド オススメ！!

    $ git clone git://github.com/mozilla-b2g/B2G.git
    $ cd B2G
    $ hg clone http://hg.mozilla.org/l10n-central/ja gecko-l10n/ja
    $ hg clone http://hg.mozilla.org/gaia-l10n/ja gaia-l10n/ja
    $ wget https://raw.github.com/hiikezoe/android_device_fujitsu_f11d/b2g/f11d.xml
    $ DEVICE=f11d ./config.sh f11d f11d.xml (*1)
    $ ./build.sh

### インストール

1. fastbootを起動

        $ adb reboot bootloader

2. recovery領域にB2Gのブートイメージを焼く

        $ fastboot flash recovery out/target/product/f11d/boot.img

3. CWM Recoveryを起動

        $ fastboot boot recovery.img

4. system領域、data領域にB2Gのファイルをコピー

        $ ...

## 起動方法
    メニュー + 戻る + 電源 On

or

    adb reboot recovery

## Miscellaneous information

### Boot modes

#### Recovery mode
    Menu + Back + Power on

#### MMC Storage mode (05c6:9006)
    Volume up + Volume down + Power on

### Partition

    mmcblk0p1  sysboot(AMMS)
    mmcblk0p2
    mmcblk0p3
    mmcblk0p4
    mmcblk0p5  APPSBL
    mmcblk0p6
    mmcblk0p7
    mmcblk0p8  boot
    mmcblk0p9
    mmcblk0p10
    mmcblk0p11
    mmcblk0p12 recovery
    mmcblk0p13 system
    mmcblk0p14 data
    mmcblk0p15 persist
    mmcblk0p16 cache
    mmcblk0p17 fota
    mmcblk0p18 fota2
    mmcblk0p19 kernellog
    mmcblk0p20 persist2

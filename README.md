# B2G for F-11D

## 概要

B2G for F-11Dは、Androidの/systemおよび/dataパーティションに手を加えることなく、
Boot to Geckoを使用することができます。

いくつかの機能はB2Gではまだ利用できませんが、B2G用Webアプリを実機でテストしたいという要望には十分応えられるはずです。

## ダウンロード
<https://drive.google.com/folderview?id=0B-JRBuba3UhLWDlmOFN3SkNvWDQ&usp=sharing>

## <a name="boot_from_fastboot">fastbootでお試し
1. SDカードにb2g-system.imgおよびuserdata.imgをコピー

        $ adb shell mkdir -p /sdcard/b2g
        $ adb push b2g-system.img /sdcard/b2g
        $ adb push userdata.img /sdcard/b2g

2. fastbootを起動

        $ adb reboot bootloader

3. fastbootからB2Gのブートイメージを起動

        $ fastboot boot boot.img

## <a name "boot_from_recovery">リカバリー領域にインストールしてAndroidとデュアルブート
1. SDカードにb2g-system.imgおよびuserdata.imgをコピー

        $ adb shell mkdir -p /sdcard/b2g
        $ adb push b2g-system.img /sdcard/b2g
        $ adb push userdata.img /sdcard/b2g

2. fastbootを起動

        $ adb reboot bootloader

3. recovery領域にB2Gのブートイメージを焼く

        $ fastboot flash recovery boot.img

### 起動方法

    メニュー + 戻る + 電源 On

or

    adb reboot recovery

## ソースコードからのビルド

    $ git clone git://github.com/mozilla-b2g/B2G.git
    $ cd B2G
    $ hg clone http://hg.mozilla.org/l10n-central/ja gecko-l10n/ja
    $ hg clone http://hg.mozilla.org/gaia-l10n/ja gaia-l10n/ja
    $ wget https://raw.github.com/hiikezoe/android_device_fujitsu_f11d/b2g/f11d.xml
    $ DEVICE=f11d ./config.sh f11d f11d.xml (*1)
    $ ./build.sh

(*1) Need https://github.com/hiikezoe/B2G/commit/1a6103a459bc9ca6b4a26a927776b36fe0e188d0

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

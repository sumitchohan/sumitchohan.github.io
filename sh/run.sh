cd ~
mkdir tmp
cd tmp
curl -O https://raw.githubusercontent.com/sumitchohan/sumitchohan.github.io/master/sh/init.sh
adb push ~/tmp/init.sh /sdcard/coc/init.sh
adb shell "sh /sdcard/coc/init.sh"

#!/usr/bin/env bash

~/Android/Sdk/tools/emulator -avd Nexus_5_API_22 -wipe-data &

sleep 30s
cd ~/Android/Sdk/platform-tools/
./adb wait-for-device && ./adb -e install -r ~/Downloads/AliExpress\ Shopping\ App_5.0.1_apk-dl.com.apk

sleep 5s

./adb shell input tap 905 575 # click to bottom icon -> go apps
sleep 5s

./adb shell input tap 540 1650 # click to bottom icon -> go apps
sleep 5s

./adb shell input tap 160 220 # click to aliexpress icon -> go apps
sleep 5s

#
#./adb shell input tap 160 220 # click to skip
#sleep 5s
#
#./adb shell input tap 160 220 # click to not now
#sleep 5s
#
#./adb shell input tap 160 220 # click to menu
#sleep 5s
#
#./adb shell input tap 160 220 # click to my account
#sleep 5s
#
#./adb shell input tap 160 220 # click to sign in
#sleep 5s

# enter email and password


#./adb shell monkey -p com.alibaba.aliexpresshd -c android.intent.category.LAUNCHER 1




#./adb -e emu kill
#
#./adb kill-server


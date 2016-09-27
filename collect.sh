#!/usr/bin/env bash

#~/Android/Sdk/tools/emulator -avd Nexus_5_API_22 -wipe-data &

cd ~/Android/Sdk/platform-tools/

# turn on device
./adb shell input keyevent KEYCODE_POWER
sleep 5s

# unlock device
./adb shell input swipe 360 1000 630 1000 #Swipe RIGHT
sleep 5s

#copy from device to desktop
#./adb pull /sdcard/screen.png /home/dim/Desktop

#sleep 20s
#./adb wait-for-device &&
./adb shell pm clear com.alibaba.aliexpresshd
#./adb uninstall ~/Downloads/app_5.0.1_apk-dl.com.apk
#./adb install -r ~/Downloads/app_5.0.1_apk-dl.com.apk

sleep 5s

#./adb shell input tap 905 575 # click to "git it" -> node notification
#sleep 5s

./adb shell input tap 360 1150 # click to bottom icon -> go apps
sleep 5s

./adb shell input tap 120 200 # click to aliexpress icon
sleep 10s

./adb shell input tap 620 120 # click to "skip" -> skip "tutorial"
sleep 5s

./adb shell input tap 451 800 # do not install new version
sleep 5s

./adb shell input tap 80 120 # open menu
sleep 5s

./adb shell input tap 325 480 # open my account
sleep 5s

./adb shell input tap 200 1150 # sign in button
sleep 5s

./adb shell input tap 200 200 # click to e-mail
sleep 2s

./adb shell input text "lenard.rukol@gmail.com" # enter e-mail
sleep 1s

./adb shell input tap 200 400 # click to password
sleep 1s

./adb shell input text "qwerty5678" # enter password
sleep 1s

./adb shell input tap 320 500 # click to sign in
sleep 10s

./adb shell input tap 360 940 # click to extra popup
sleep 5s

./adb shell input tap 80 120 # open menu
sleep 5s

./adb shell input tap 285 400 # click to home
sleep 5s

./adb shell input tap 300 620 # click to link to coins
sleep 5s

./adb shell input tap 575 1100 # hide extra popup
sleep 5s

./adb shell input tap 360 285 # click to coins
sleep 5s

./adb shell screencap -p /sdcard/screen.png
./adb pull /sdcard/screen.png /home/dim/Desktop

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


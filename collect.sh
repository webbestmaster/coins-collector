#!/usr/bin/env bash

#~/Android/Sdk/tools/emulator -avd Nexus_5_API_22 -wipe-data &

# set path to adb

echo "email $1"
echo "password $2"

email=$1
password=$2

email="lenard.rukol@gmail.com"
password="qwerty5678"

macOsAdbPath="/Library/Android/sdk/platform-tools/";
# set right path fo linux
linuxOsAdbPath="/Library/Android/sdk/platform-tools/";

#pathToAdb;

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    pathToAdb=$linuxOsAdbPath;
elif [[ "$OSTYPE" == "darwin"* ]]; then
    pathToAdb=$macOsAdbPath;
fi

cd ~/$pathToAdb;

# turn on device
./adb shell input keyevent KEYCODE_POWER
echo "turn on";
sleep 5s

# unlock device
./adb shell input swipe 360 1000 630 1000 #Swipe RIGHT
echo "unlock"
sleep 5s

./adb shell pm clear com.alibaba.aliexpresshd
echo "app cleaded"
sleep 5s




./adb shell input tap 110 280 # open app
echo "app open";
sleep 15s

./adb shell input tap 630 130 # skip screen
echo "app promo screen";
sleep 10s

./adb shell input tap 75 150 # open menu
echo "open left menu";
sleep 5s

./adb shell input tap 75 300 # open login
echo "go to login screen";
sleep 5s

./adb shell input tap 200 1175 # click enter button
echo "click to login button";
sleep 5s

./adb shell input tap 330 250 # click to email field
echo "click to e-mail field";
sleep 5s

./adb shell input text $email # enter e-mail # "lenard.rukol@gmail.com"
echo "enter e-mail - $email";
sleep 5s

./adb shell input tap 330 370 # click to email password
echo "click to password field";
sleep 5s

./adb shell input text $password # enter password # "qwerty5678"
echo "enter password - $password";
sleep 5s

./adb shell input tap 380 520 # click to sign in
echo "click to sign in button";
sleep 5s


sleep 500s


# actions

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

./adb shell input text $email # enter e-mail # "lenard.rukol@gmail.com"
sleep 1s

./adb shell input tap 200 400 # click to password
sleep 1s

./adb shell input text $password # enter password # "qwerty5678"
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
./adb pull /sdcard/screen.png ~/Documents/
echo "screen shot - done";
sleep 3s

./adb shell input keyevent KEYCODE_POWER
echo "turn off";
sleep 3s

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


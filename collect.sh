#!/usr/bin/env bash

#~/Android/Sdk/tools/emulator -avd Nexus_5_API_22 -wipe-data &

# set path to adb

echo "email $1"
echo "password $2"

email=$1
password=$2

email="lenard.rukol@gmail.com"
password="qwerty5678"

macOsAdbPath=(~/Library/Android/sdk/platform-tools/);
# set right path fo linux
linuxOsAdbPath=(~/Library/Android/sdk/platform-tools/);

#pathToAdb;

if [[ "$OSTYPE" == "linux-gnu" ]]; then
    pathToAdb=$linuxOsAdbPath
elif [[ "$OSTYPE" == "darwin"* ]]; then
    pathToAdb=$macOsAdbPath
fi

cd $macOsAdbPath

# turn on device
./adb shell input keyevent KEYCODE_POWER
echo "turn on"
sleep 5s

# unlock device
./adb shell input swipe 360 1000 630 1000 #Swipe RIGHT
echo "unlock"
sleep 5s

./adb shell am force-stop com.alibaba.aliexpresshd
echo "app stop"
sleep 5s

./adb shell pm clear com.alibaba.aliexpresshd
echo "app cleared"
sleep 5s




./adb shell input tap 110 280 # open app
echo "app open"
sleep 25s

./adb shell input tap 630 130 # skip screen
echo "skip promo screen"
sleep 10s

./adb shell input tap 75 150 # open menu
echo "open left menu"
sleep 5s

./adb shell input tap 75 300 # open login
echo "go to login screen"
sleep 5s

./adb shell input tap 200 1175 # click enter button
echo "click to login button"
sleep 5s

./adb shell input tap 330 250 # click to email field
echo "click to e-mail field"
sleep 5s

./adb shell input text $email # enter e-mail # "lenard.rukol@gmail.com"
echo "enter e-mail - $email"
sleep 5s

./adb shell input tap 330 370 # click to email password
echo "click to password field"
sleep 5s

./adb shell input text $password # enter password # "qwerty5678"
echo "enter password - $password"
sleep 5s

./adb shell input tap 380 520 # click to sign in
echo "click to sign in button";
sleep 5s

./adb shell input tap 210 770 # hide google
echo "hide google"
sleep 5s

./adb shell input tap 490 1010 # hide new profile
echo "hide new profile"
sleep 5s

./adb shell input tap 75 150 # open menu
echo "open left menu"
sleep 5s

./adb shell input tap 205 400 # click to home
echo "click to home"
sleep 5s

./adb shell input tap 225 625 # click go to coins
echo "click go to coins"
sleep 5s

./adb shell input tap 580 1090 # hide popup
echo "hide popup"
sleep 5s

./adb shell input tap 360 270 # get coins
echo "get coins"
sleep 5s



now=$(date)
now=${now// /-}
now=${now//:/-}
now=${now//--/-}

./adb shell screencap -p "/sdcard/screen-$now.png"
./adb pull "/sdcard/screen-$now.png" ~/Documents/screens/
echo "screen shot - done"
sleep 3s

./adb shell input keyevent KEYCODE_POWER
echo "turn off"
sleep 3s

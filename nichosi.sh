#!/usr/bin/env bash


macOsAdbPath=(~/Library/Android/sdk/platform-tools/);
# set right path fo linux
linuxOsAdbPath=(~/Android/Sdk/platform-tools/);

#pathToAdb;



if [[ "$OSTYPE" == "linux-gnu" ]]; then
    pathToAdb=$linuxOsAdbPath
elif [[ "$OSTYPE" == "darwin"* ]]; then
    pathToAdb=$macOsAdbPath
fi

cd $pathToAdb

while [ $1 -ne 4 ]
do
./adb shell input tap 318 334
done



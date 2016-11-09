#!/usr/bin/env bash

cd ~/Library/Android/sdk/platform-tools/

string=$(./adb shell 'pm list packages -f')

#./adb uninstall

#string="1:2:3:4:5"
#set -f                      # avoid globbing (expansion of *).
array=(${string//^/ ,g})
item="";
finded="data";
appName="";
for i in "${!array[@]}"
do

    item="${array[i]}";

    if [[ "$item" == *"$finded"* ]]; then
        appName=(${item//=/ });
        appName="${appName[1]}";

        aliExporess="com.alibaba.aliexpresshd"
#        echo ${#aliExporess} # get length of string
        appName="${appName%?}" # remove last extra character

        if [[ "com.alibaba.aliexpresshd" != $appName ]]; then

            echo "stop $appName"
            ./adb shell am force-stop $appName
            echo "clear $appName"
            ./adb shell pm clear $appName
            echo "uninstall $appName"
            ./adb shell pm uninstall $appName
            echo " -- Uninstall $appName is done";

        fi

    fi

done


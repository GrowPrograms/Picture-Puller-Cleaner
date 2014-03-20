#!/bin/bash
#
# This script assumes you have cd to the directory
#
#

cd script
echo && echo "Running Cleaner/Puller..." && echo

bin/./adb-mac kill-server
bin/./adb-mac start-server
#Resets server for android bridge

if [ $(bin/./adb-mac get-state) = "device" ]
  then
    echo
    bin/./adb-mac pull sdcard/DCIM/GA/ GA\ Pictures/
    bin/./adb-mac shell rm sdcard/DCIM/GA/*.jpg
    # Pulls GA Pictures and deletes from android phone
fi
#only runs if device is detected on usb
    
bin/./jhead-mac -purejpg ../GA\ Pictures/*.jpg
#Deletes Pictures from folder in phone and all data from pictures

bin/./adb-mac kill-server
#Kills server end of script

echo
cd ..
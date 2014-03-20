#!/bin/bash
#
# 
#
#

echo && echo "Welcome to Picture Cleaner/Puller(for android)!" && echo
#Welcome

echo "Checking which platform you are running..." && sleep 3
#PLATFORM CHECKS
if [ $OSTYPE = "darwin12" ]
  then
    script/./mac-pullclean.sh
fi
if [ $OSTYPE = "MSWin32" ]
  then
    script/sh windows-pullclean.sh
fi
if [ $OSTYPE = "MSWin64" ]
  then
    script/sh windows-pullclean.sh
fi
if [ $OSTYPE = "linux" ]
  then
    script/./linux-pullclean.sh
fi
#END PLATFORM CHECKS

if [ ! -d GA\ Pictures/"$(date +"%B %d, %Y")" ]
  then 
    mkdir GA\ Pictures/"$(date +"%B %d, %Y")"
fi
#if statement so Folder is not overwritten

if [ ! -e GA\ Pictures/"$(date +"%B %d, %Y")"/Update.txt ]
  then 
    touch GA\ Pictures/"$(date +"%B %d, %Y")"/Update.txt
fi
#if statement so Update.txt is not overwritten

mv GA\ Pictures/*.jpg GA\ Pictures/"$(date +"%B %d, %Y")"/
# Moves pictures to directory for today

echo
echo "Pictures Ready to use!!"
echo "Located in "$(pwd)"/GA Pictures/"$(date +"%B %d, %Y")
echo
exit

   
  
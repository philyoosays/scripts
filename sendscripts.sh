#!/bin/bash
#

if [[ $1 == '' ]]; then
  echo ""
  echo "sendscripts <<file_name.sh>>"
  echo ""
else
  cp ~/webdev/scripts/$1 //desktop-9e9qh59/shared/$1
fi

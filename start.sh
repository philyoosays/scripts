#!/bin/bash
#

  PROJECT=$1
  AMHOME=false
  START='none'
  sublime=$3
  DIRECTORY=/Users/philyoo/

  if [ -z $PROJECT ]; then
    read -p "project: " PROJECT
  fi

  if [[ $2 == '' ]]; then
    AMHOME=true
  fi

  if [[ $3 != '' ]]; then
    sublime=true
  fi

  source /Users/philyoo/webdev/scripts/projectlist.sh

  cd $DIRECTORY

  if [[ $sublime == 'true' ]] || [[ $sublime == 't' ]] || [[ $sublime == 'y' ]] || [[ $sublime == 'yes' ]] || [[ $sublime == 'Yes' ]] || [[ $sublime == 'True' ]]; then
    subl .
  fi

  if [[ $START == 'start' ]]; then
    yarn start
  else
    npm run $START
  fi






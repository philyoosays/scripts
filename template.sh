#!/bin/bash
#

rootdir=$1
dir=/Users/philyoo/webdev/templates
counter=1
template=false
templatedir=false

# Did you provide me with a root directory
if [[ $rootdir != '' ]]; then

  echo "================="
  echo "Select a template"
  echo "================="

  # Loop and echo each directory
  for d in $dir/*;
  do
    temp=${d##/Users/philyoo/webdev/templates/}
    tempdir=$d
    echo - $counter - ${temp};
    counter=$((counter + 1))
  done

  # Record choice as a number
  echo "================="
  read -p "Select Number: " choice

  # Reset counter for new loop
  counter=1

  # Loop and if the count matches then get directory
  for d in $dir/*;
  do
    if [[ $counter == $choice ]]; then
      template=${d##/Users/philyoo/webdev/templates/}
      templatedir=$d
    fi
    counter=$((counter + 1))
  done

  # if here, spread the template contents out over the current directory
  if [[ $rootdir == 'here' ]]; then
    cp -r $templatedir/ ./
  else
    cp -r $templatedir $rootdir
  fi

else
  echo ""
  echo "cmd 'template' requires a root directory as an argument"
  echo ""
  echo "Examples:"
  echo "$ template client"
  echo "--creates a folder called client and copies template to that dir"
  echo ""
  echo "$ template here"
  echo "--create all tempalte files in current dir"
  echo ""
  echo ""
fi



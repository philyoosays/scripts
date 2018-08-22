#!/bin/bash

# sysinfo_page - A script to produce an html file

cat <<- _EOF_
<html>
  <head>
    <title>
    The title of your page
    $HOSTNAME
    </title>
  </head>

  <body>
    Your page content goes here.
    $PWD
  </body>
</html>
_EOF_

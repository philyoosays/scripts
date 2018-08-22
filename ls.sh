#!/bin/bash
#

if [ -z $1 ]; then
  ls -la
else
  ls -la $1

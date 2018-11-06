#!/bin/bash
dpkg -S filepath
echo "What is the command name?"
enter=0
while [[ $enter = "" ]]; do
  case $1 in
    -S )
   exit
   ;;
  esac
echo "ERROR"
echo "Command didn't come from a software package"
echo "Command doesn't come from a file"
done

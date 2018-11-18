#!/bin/bash
#dpkg -S filepath
commandname=$1
#asking for the command name.
read -p "What is the command name?"
command
#staring while loop and run the command.
while [[ $commandname = "" ]]; do
  case $commandname in
    -h | --help)
    echo "Type the command please."
    exit 0 #exit with no error.
  esac
  #exit if user put nothing.
  if [[$commandname = ""]] then
   exit 0 #exit with no error.
   ;;
  fi
#showing error or doesn't in file.
noname="dpkg -S $commandname"
$noname || echo "ERROR"
echo "Command didn't come from a software package"
echo "Command doesn't come from a file"
done

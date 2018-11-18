#!bin/bash
#
#This part detects which command the user is typing and assign it to variable
command=$1
read -p "Enter a command name :" command # This line asks and read the input from the user
# Open a loop,runs help command if user requires and put the command to be runned in a variable called arg
while [[ $command != "" ]] ; do
  case $command in
  -h | --help ) #This line calls for help
  esac
  if [[ $command = "" ]]; then # Exit successfully if user hits enter
    exit 0
  fi
  arg="dpkg -S $command"
  $arg || echo "No file" # This line checks if there is any error and sends an error message
  read -p "Enter another command name :" command # This line makes a reprompt
done

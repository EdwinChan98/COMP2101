#!/bin/bash
#the default count is 1 and sides is 6.
sum=0
count=1
sides=6
#starting the while loop.
while [[ $count -gt 0 ]]; do
  case $1 in
    #showing the instructions.
    -h | --help )
      echo "Please type '-c' for setting the number of dice and type '-s' for setting the sides of the dice."
      echo "The default count of dice is 1 and sides is 6."
      echo "The count of dice must be a number from 1 to 9 and the sides per dice must be the number from 4 to 20."
      exit 0 #Return to no error.
      ;;
  esac
  #starting the count from 1 to 9.
  case $1 in
    -c | --count ) shift
    if [[ $1 -lt 1 || $1 -gt 9 ]]; then #check the range between 1-9.
      echo "Please enter a number of dice to roll between 1-9." > /dev/stderr #if error will turn to stderr.
      exit 1 #exit if error.
    fi
      count=$1
      ;;
  esac
  #starting the sides from 4 to 20.
  case $2 in
    -s | --sides ) shift
    if [[ $2 -lt 4 || $2 -gt 20 ]]; then #check the range between 4-20.
      echo "Please enter a number of sides per dice between 4-20." > /dev/stderr #if error will turn to stderr.
      exit 1 #exit if error.
    fi
      sides=$2
      ;;
  esac
  shift
  #showing the result of the dice.
   roll=$(( $RANDOM % sides +1 ))
   sum=$(( $sum + $roll ))
   echo "Rolled $roll"
   count=$((count-1))
done
#displaying the total numbers.
echo "You rolled a total of $sum."

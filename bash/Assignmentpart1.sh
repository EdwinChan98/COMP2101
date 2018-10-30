#!/bin/bash
sum=0
count=8
sides=10
while [[ $count -gt 0 ]]; do
  case $1 in
    -h | --help)
      echo "Please type '-c' or '-s' with numbers."
      exit 0
      ;;
  esac
  case $1 in
    -c | --count) shift
      if [[ $1 -lt 1 || $1 -gt 9 ]]; then
        echo "Please enter a number of dice to roll between 1-9"
        exit
      fi
      count=$1
      ;;
  esac
  case $2 in
    -s | --sides) shift
      if [[ $2 -lt 4 || $2 -gt 20 ]]; then
      echo "Please enter a number of sides per die between 4-20"
      exit
      fi
      sides=$2
      ;;
  esac
  roll=$(( $RANDOM % sides +1 ))
  sum=$(( $sum + $roll ))
  echo "Rolled $roll"
  count=$((count-1))
done
echo "You rolled a total of $sum"

#!/bin/#!/usr/bin/env bash
#report title.
echo "This is the memory usage report:"
#showing all the information of the memory usage.
free -m
#line for separate.
echo "-----------------------------"
#showing the total amount of RAM installed.
echo "The total amount of RAM installed is "
#getting the number of the total amount of RAM installed from 'free -m'.
awk '/Mem/ {print $2}' <(free -m)
#showing the amount of free RAM.
echo "The amount of free RAM is "
#getting the number of the amount of free RAM from 'free -m'.
awk '/Mem/ {print $4}' <(free -m)
#line for separate.
echo "-----------------------------"
#showing the sum of the used and cached RAM.
echo "The sum of the used and cached RAM is "
#calculating the number of the the used and cached RAM from 'free -m'.
awk '/Mem/ {print $3 + $6}' <(free -m)
#line for separate.
echo "-----------------------------"
#showing the available amount of RAM.
echo "The available amount of RAM is "
#getting the available amount of RAM from 'free -m'.
awk '/Mem/ {print $7}' <(free -m)
#showing the free amount of RAM.
echo "The free amount of RAM is "
#getting the free amount of RAM from 'free -m'.
awk '/Mem/ {print $4}' <(free -m)
#line for separate.
echo "-----------------------------"
#showing the percentage of the RAM used for share.
echo "The percentage of the RAM used for share is "
#calculating the percentage of the RAM used for share from 'free -m'.
awk '/Mem/ {print $5/$3 *100 "%"}' <(free -m)
#line for separate.
echo "-----------------------------"
#showing the percentage of the RAM used in total.
echo "The percentage of the RAM used in total is "
#calculating the percentage of the RAM used in total from 'free -m'.
awk '/Mem/ {print $3/$2 *100 "%"}' <(free -m)
#line for separate.
echo "-----------------------------"
#showing the percentage of the RAM used for cache in total.
echo "The percentage of the RAM used for cache in total is "
#calculating the percentage of the RAM used for cache in total from 'free -m'.
awk '/Mem/ {print $6/$2 *100 "%"}' <(free -m)

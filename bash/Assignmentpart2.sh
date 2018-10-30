#!/bin/#!/usr/bin/env bash
echo "This is the memory usage report:"
free -m
echo "-----------------------------"
echo "The total amount of RAM installed is "
awk '/Mem/ {print $2}' <(free -m)
echo "The amount of free RAM is "
awk '/Mem/ {print $4}' <(free -m)
echo "-----------------------------"
echo "The sum of the used and cached RAM is "
awk '/Mem/ {print $3 + $6}' <(free -m)
echo "-----------------------------"
echo "The available amount of RAM is "
awk '/Mem/ {print $7}' <(free -m)
echo "The free amount of RAM is "
awk '/Mem/ {print $4}' <(free -m)
echo "-----------------------------"
echo "The percentage of the RAM used for share is "
awk '/Mem/ {print $5/$3 "%"}' <(free -m)
echo "-----------------------------"
echo "The percentage of the RAM used in total is "
awk '/Mem/ {print $3/$2 *100 "%"}' <(free -m)
echo "-----------------------------"
echo "The percentage of the RAM used for cache in total is "
awk '/Mem/ {print $6/$2 *100 "%"}' <(free -m)

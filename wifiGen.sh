#!/bin/bash

length=0
num=0

read -p "password lenght: " length
read -p "how many: " num

cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w $length | head -n $num

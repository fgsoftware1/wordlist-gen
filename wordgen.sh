#!/bin/bash

length=0
num=0

read -p "password lenght: " length
read -p "how many: " num

#for ((n=0;n<$num;n++))
#do dd if=/dev/urandom count=12> /dev/null | uuencode -m - | sed -ne 2p | cut -c-$length
#done
cat /dev/urandom | tr -dc 'a-z0-9.-_' | fold -w $length | head -n $num

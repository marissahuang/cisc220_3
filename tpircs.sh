#!/bin/bash

# Marissa Huang - 10179169
# Deven Bernard - 10099810
# Kevin Zuern - 10134425
# Quentin Petraroia - 10145835


read -p "enter a line of words " choice
#newArray=( $choice )
for b in $choice; do
   newArray+=($b)
   #newArray+=(" ")
done

for ((i=0; i < ${#newArray[@]}; i++));
do
  for ((j=${#newArray[i]-1}; j >= 0; j--))
  do
    output=$output${newArray[i]:$j:1}
done
output+=" "
done
echo "output:" $output

#!/bin/bash

#Deven Bernard - 10099810
#Kevin Zuern - 10134425 
#Marissa Huang - 10179169
#Quentin Petraroia - 10145835

addFunc() {
newInt=$1;
tot=0;
for m in $(seq 0 $((${#newInt}-1)));do
	tot=$((tot + ${newInt:m:1}));
done
echo $tot;
}

for i in $(seq 1000 10000);do
	curNum=$i
	lucky=$(addFunc $curNum);
	if [[ ${#lucky} == 1 ]];then
		if [[ $lucky == 7 ]];then
			echo $curNum;
		fi;
	elif [[ ${#lucky} > 1 ]];then
		if [[ $(addFunc $lucky) == 7 ]];then
			echo $curNum;
		fi;
	elif [[ $lucky == 7 ]];then
		echo $curNum;
	fi;
done


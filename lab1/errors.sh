#!usr/bin/bash

check_calc(){
	if ! [[ $# == 3 ]]
	then
		echo -1
		exit
	fi
	
	if ! [[ $2 =~ ^-?[0-9]+$ && $3 =~ ^-?[0-9]+$ ]]
	then
		echo -2
		exit
	fi

	if ! [[ $1 == 'sum' || $1 == 'sub' || $1 == 'mul' || $1 == 'div' ]]
	then
		echo -3
		exit
	fi
	
	if [[ $1 == 'div' && $3 == 0 ]]
	then
		echo -4
		exit
	fi

	echo 0
}


#!/usr/bin/bash

. ./errors.sh
. ./errors_code.sh

BLUE_FG=$(tput setaf 6)
NORMAL=$(tput sgr0)

while :
do

tput clear

bash help.sh

echo "${BLUE_FG}CHOOSE A COMMAND${NORMAL}"



read command

case $command in
	'calc')
		echo "${BLUE_FG}Enter arguments${NORMAL}"
		read operation a b
		flag=$(check_calc $operation $a $b)
		if [[ $flag -eq 0 ]]
		then	
			bash calc.sh  $operation $a $b
		else 
			bash errors_code.sh $flag
		fi
		;;
	'search')
		echo "${BLUE_FG}Enter arguments${NORMAL}"
		read directory string
		bash search.sh $directory $string
		;;
	'reverse')
		echo "${BLUE_FG}Enter arguments${NORMAL}"
		read file1 file2
		bash reverse.sh $file1 $file2
		;;
	'strlen')
		echo "${BLUE_FG}Enter arguments${NORMAL}"
		read string
		bash strlen.sh $string
		;;
	'log')
		bash log.sh
		;;
	'exit')
		echo "${BLUE_FG}Enter arguments${NORMAL}"
		read return_code
		exit $return_code
		;;
	'help')
		bash help.sh
		;;

esac

read -s -p "Press key" -n 1 ch

done

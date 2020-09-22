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
		flag=$(check_search $directory $string)
		if [[ $flag -eq 0 ]]
		then
			bash search.sh $directory $string
		else
			bash errors_code.sh $flag
		fi
		;;
	'reverse')
		echo "${BLUE_FG}Enter arguments${NORMAL}"
		read file1 file2
		flag=$(check_reverse $file1 $file2)
		if [[ $flag -eq 0 ]]
		then 
			bash reverse.sh $file1 $file2
		else 
			bash errors_code.sh $flag
		fi
		;;
	'strlen')
		echo "${BLUE_FG}Enter arguments${NORMAL}"
		read string
		flag=$(check_strlen $string)
		if [[ $flag -eq 0 ]]
		then
			bash strlen.sh $string
		else 
			bash errors_code.sh $string
		fi
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

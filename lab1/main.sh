#!usr/bin/bash

. ./errors.sh
. ./errors_code.sh

case $1 in
	'calc')
		flag=$(check_calc $2 $3 $4)
		if [[ $flag -eq 0 ]] 
		then
			bash calc.sh $2 $3 $4
		else
			bash errors_code.sh $flag
			echo $flag
			exit $flag		
		fi
		;;
	'search')
		bash search.sh
		;;
	'reverse')
		bash reverse.sh
		;;
	'strlen')
		bash strlen.sh
		;;
	'log')
		bash log.sh
		;;
	'exit')
		bash exit.sh
		;;
	'help')
		bash help.sh
		;;
	'interactive')
		bash interactive.sh
		;;
	*)
		echo "wrong command"
		bash help.sh	
esac


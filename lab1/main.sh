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
			exit $flag		
		fi
		;;
	'search')
		flag=$(check_search $2 $3)
		if [[ $flag -eq 0 ]]
		then
			bash search.sh $2 $3
		else 
			bash errors_code.sh $flag
			exit $flag
		fi
		;;
	'reverse')
		flag=$(check_reverse $2 $3)
		if [[ $flag -eq 0 ]]
		then
			bash reverse.sh $2 $3
		else 
			bash errors_code.sh $flag
			exit $flag
		fi
		;;
	'strlen')
		flag=$(check_strlen $2)
		if [[ $flag -eq 0 ]]
		then
			bash strlen.sh
		else 
			bash errors_code.sh $flag
			exit $flag
		fi
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


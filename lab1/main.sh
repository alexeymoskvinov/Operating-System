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
		if [[ $# == 2 ]]
		then
			bash strlen.sh "$2"
		else 
			bash errors_code.sh -1
			exit -1
		fi
		;;
	'log')
		flag=$(check_log)
		if [[ flag -eq 0 ]]
		then 
			bash log.sh
		else
			bash errors_code.sh -5
			exit -5
		fi
		;;
	'exit')
		flag=$(check_exit $2)
		if [[ $flag -eq 0 ]]
		then
			bash exit.sh $2
		else
			bash errors_code.sh $flag
			exit $flag
		fi
		;;
	'help')
		bash help.sh
		;;
	'interactive')
		bash interactive.sh
		;;
	*)	
		flag=-6
		bash errors_code.sh $flag
		bash help.sh
		exit -6
		
esac


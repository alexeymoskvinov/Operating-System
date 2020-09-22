#!usr/bin/bash

case $1 in 
	-1)
		echo "wrong number of arguments" >&2
		;;
	-2)
		echo "not numbers" >&2
		;;

	-3)
		echo "wrong command" >&2
		;;
	-4)
		echo "division by zero" >&2
		;;
esac

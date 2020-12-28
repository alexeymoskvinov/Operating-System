#!bin/bash

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

check_search(){
	if ! [[ $# == 2 ]]
	then 
		echo -1
		exit
	fi

	if ! [[ -d $1 ]]
	then
		echo -5
		exit
	fi

	echo 0
}


check_reverse(){
	if ! [[ $# == 2 ]]
	then 
		echo -1
		exit
	fi

	if ! [[ -e $1 ]]
	then 
		echo -7
		exit
	fi
	
	txt=$(tac $1 2>/dev/null)
	if ! [[ $? -eq 0 ]]
	then
		echo -7
		exit
	fi
	echo 0
}

check_log(){
	if [[ -d /usr/share/man/man3p/log.3p.gz ]]
	then
		echo -5
		exit
	fi
	echo 0
}

check_exit(){
	if ! [[ $# == 1 ]] && ! [[ $# == 0 ]]
	then
		echo -1
		exit
	fi

	if ! [[ $1 =~ ^-?[0-9]+$ ]] && ! [[ $# == 0 ]]
	then
		echo -2
		exit
	fi
	echo 0

}

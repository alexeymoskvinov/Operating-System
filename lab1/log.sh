#!/usr/bin/bash

war="\(WW\)"
inf="\(II\)"

NORMAL=$(tput sgr0)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 6)

grep -E -h -s $war /var/log/anaconda/X.log | sed -E "s/$war/${YELLOW}Warning${NORMAL}/" 
grep -E -h -s $inf /var/log/anaconda/X.log | sed -E "s/$inf/${BLUE}Information${NORMAL}/"


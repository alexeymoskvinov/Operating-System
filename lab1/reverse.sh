
#! /usr/bin/bash

cat $1 | tac -r -s '.\|' >  $2


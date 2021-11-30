#!/bin/sh

all="$1"
func() {
	echo "program start"
	echo "in function"
	str="ls $all"
	eval $str
	echo "program exit"
}
func
exit 0


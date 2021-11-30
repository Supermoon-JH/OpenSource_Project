#!/bin/sh

name="$1"
func() {
	str1="grep $name DB.txt"
	eval $str1
}
func
exit 0

#!/bin/sh

name="$1"
number="$2"
func() {
	str="touch DB.txt"
	eval $str
}
func
echo "$1 $2" >> DB.txt

#!/bin/sh

name="$1"
func() {
	str1="mkdir $name"
	str2="cd $name"
	str3="touch file0.txt"
	str4="touch file1.txt"
	str5="touch file2.txt"
	str6="touch file3.txt"
	str7="touch file4.txt"
	str8="mkdir $name"
	str9="cd $name"
	str10="touch file0.txt"
	str11="touch file1.txt"
	str12="touch file2.txt"
	str13="touch file3.txt"
	str14="touch file4.txt"
	str15="mkdir $name"
	str16="tar -cvf files.tar $name"
	str17="ls"
	str18="tar -xvf files.tar"

	eval $str1 
	eval $str2 
	eval $str3 
	eval $str4 
	eval $str5 
	eval $str6 
	eval $str7 
	eval $str8
	eval $str9
	eval $str10 
	eval $str11
	eval $str12 
	eval $str13 
	eval $str14 
	eval $str15 
	eval $str16
	eval $str17
	eval $str18

}
func
exit 0

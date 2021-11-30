#!/bin/sh

name="$1"
func() {
	str1="cd $name"
	str2="mkdir file0"
	str3="cd file0"
	str4="ln -s file0 file0.txt"
	str5="cd .."
	
	str7="mkdir file1"
	str8="cd file1"
	str9="ln -s file1 file1.txt"
	str10="cd .."
	
	str12="mkdir file2"
	str13="cd file2"
	str14="ln -s file2 file2.txt"
	str15="cd .."
	
	str17="mkdir file3"
	str18="cd file3"
	str19="ln -s file3 file3.txt"
	str20="cd .."
	
	str22="mkdir file4"
	str23="cd file4"
	str24="ln -s file4 file4.txt"
	str25="cd .."

	eval $str1 
	eval $str2 
	eval $str3 
	eval $str4 
	eval $str5 
	 
	eval $str7 
	eval $str8
	eval $str9
	eval $str10 
	
	eval $str12 
	eval $str13 
	eval $str14 
	eval $str15 
	
	eval $str17
	eval $str18
	eval $str19 
	eval $str20 
	 
	eval $str22 
	eval $str23 
	eval $str24 
	eval $str25 
}
func
exit 0

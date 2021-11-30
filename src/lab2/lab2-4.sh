#!/bin/sh
echo "Is linux funny? (yes / no)"
read answer
case $answer in
	yes|y|Y|Yes|YES)
	echo "good."
	echo "Try hard lol";;
	[nN]*)
	echo "too shame.";;
	*)
	echo "only yes or no"

	exit 1;;
esac
exit 0

#!/usr/bin/env bash


filemanager="file manager";
spotify="spotify";
suspend="suspend";
lock="lock";

case $1 in
	$filemanager) coproc ( alacritty --command clifm -A --disk-usage ~  > /dev/null  2>&1 );;
	$spotify) coproc ( alacritty --command spt > /dev/null 2>&1 );;
	$suspend) systemctl suspend;;
	$lock) coproc ( i3lock  > /dev/null  2>&1 );;
esac

if [ -z "$1" ]
then
	echo $filemanager
	echo $spotify
	echo $suspend
	echo $lock
fi

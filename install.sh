#!/bin/bash

function setWall() { 
	printf "Please select your theme (blur) : \n"
	options=("Moonknight" "Baruto" "Solo-leveling" "exit")
   select opt in "${options[@]}";do
		case $opt in

			"Moonknight")
				betterlockscreen -u $PWD/backgrounds/moonknight.jpg
				break
				;;
			"Baruto")
				betterlockscreen -u $PWD/backgrounds/baruto.jpg
				break
				;;
			"Solo-leveling")
				betterlockscreen -u $PWD/backgrounds/solo-leveling.jpg
				break
				;;
			"exit")
				break
				;;
			*)
				printf  "Choose a theme!!\n"
				;;
		esac
	done
}
function setWall_noBlurr() { 
	printf "Please select your theme (No-blur) : \n"
	options=("Moonknight-noblur" "Baruto-noblur" "Solo-leveling-noblur" "exit")
   select opt in "${options[@]}";do
		case $opt in

			"Moonknight-noblur")
				betterlockscreen -u $PWD/backgrounds/moonknight-noblur.jpg
				break
				;;
			"Baruto-noblur")
				betterlockscreen -u $PWD/backgrounds/baruto-noblur.png
				break
				;;
			"Solo-leveling-noblur")
				betterlockscreen -u $PWD/backgrounds/solo-leveling-noblur.png
				break
				;;
			"exit")
				break
				;;
			*)
				printf  "Choose a theme!!\n"
				;;
		esac
	done
}
	
usage(){
	printf "usage ./install.sh <options eg: -b , -h , -n ...> \noptions :  \n b - blurred \n h - help\n n - no blur\n"
}

while getopts "bhn" arg;do
	case "${arg}" in
		b)
			setWall
			exit 0
			;;
		n)
			setWall_noBlurr
			exit 0
			;;
		h)
			usage
			exit 0 
			;;
		*)
			usage
			break
			;;
	esac
	
done			

#https://github.com/shinas101




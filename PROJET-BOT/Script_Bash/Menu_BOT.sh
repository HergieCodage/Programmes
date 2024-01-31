#!/bin/bash
. color.sh
. Functions_Bot.sh

while true; do
	clear
	echo -e "${Title}                             ${Normal}"
	echo -e "${Title}           Menu              ${Normal}"
	echo -e "${Title}                             ${Normal}"
	echo -e "${Blank}                             ${Normal}"
	echo -e "${Blank} ${Normal}                           ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 1: PersoCreate     ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 2: EditBourse       ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper 3: ListePerso       ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}     Taper Q: Quitter      ${Blank} ${Normal}"
	echo -e "${Blank} ${Normal}                           ${Blank} ${Normal}"
	echo -e "${Blank}                             ${Normal}"
	echo "                             "
	read -p "Entrez votre choix: " choix
	case "$choix" in
		1) PersoCreate
			;;
		2) EditBourse
			 ;;
		3) ListePerso
			;;
		"q"|"Q") echo "Bonne journée et à la prochaine ...";
		break
		   ;;
		*) echo "Mauvais choix"
	esac
	#statements
done

#script and edited by Hergie

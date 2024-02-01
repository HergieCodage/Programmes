#!/bin/bash
. function_menuJet.sh

while true; do
echo "Taper 1: Dés 6"
echo "Taper 2: Dés 100"
echo "Taper 3: Rencontre Aléatoire"
echo "Taper Q: Quitter"
echo ""
read -p "Entrez votre choix: " choix
	case "$choix" in
		1) 1D6
			;;
		2) 1D100
			 ;;
		3) RencontreAleatoire
			;;
		"q"|"Q") echo "Bonne journée et à la prochaine ...";
		break
		   ;;
		*) echo "Mauvais choix"
	esac 
done
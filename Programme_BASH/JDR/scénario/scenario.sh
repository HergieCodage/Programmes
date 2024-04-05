#!/bin/bash
. function_scenario.sh

while true; do
clear
echo "Taper 1: Jouer"
echo "Taper Q: Quitter"
echo
read -p "Entrez votre choix: " choix
    case "$choix" in 
        1) Introduction
            ;;
        "q"|"Q") echo "Mercie d'avoir jouer !"
        break
            ;;
        *) echo "Mauvais choix"
    esac
done
    
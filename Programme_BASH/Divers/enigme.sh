#!/bin/bash
clear

bonnereponse="cotes"

echo "Elles font le tour des continents"
echo "On les gravit difficilement"
echo "Mais se les tenir"
echo "c'est quand même beaucoup rire"

while [ "$reponse" != "$bonnereponse" ]
do
	read -p  "Qui sont-elles? " reponse  
	
	if [ "$reponse" = "$bonnereponse" ] 
	then 
		echo "Bonne réponse! "
	else
		echo "Faux! "
		echo "Essaye encore!"
	fi
done
read -p "Bon jeu à vous!"

#script and edited by Hergie & Dakon

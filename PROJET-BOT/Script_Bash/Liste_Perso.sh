#!/bin/bash
clear
chemin=/home/hergie/Bureau/PROJET-BOT/Script_Bash/save/Personnages
liste_perso=`ls $chemin`
declare -a tab_perso
i=0
p=2
for perso in $liste_perso
do
	if [ $p -eq 2 ]
	then
		tab_perso[$i]="$perso"
		echo "$i - $perso"
		echo
		let "i=i+1"
		let "p=p+1"
	else
		tab_perso[$i]="$perso"
		echo "$i - $perso"
		echo
		let "i=i+1"
		let "p=p-1"
	fi
done
echo
echo "Choisissez votre personnage :"
read choix
echo
cat $chemin/${tab_perso[$choix]}
echo

#script and edited by Hergie and Dakon

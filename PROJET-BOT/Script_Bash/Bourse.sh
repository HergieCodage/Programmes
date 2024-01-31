#!/bin/bash
#clear
Bourse=$PO
echo "Combien avez-vous de Pièce d'OR de Base ?"
	read PO
echo "Bourse = $PO PO"
#clear
echo "Voulez-vous Ajouter ou Retirer des pièces d'or de votre bourse ?"
declare -a Choix=([1]="Ajouter" [2]="Retirer")
for i in ${!Choix[@]}
do
	echo $i : ${Choix[$i]}	
done
	read reponse
	
	if [ ${Choix[$reponse]} = ${Choix[1]} ]
	then
		echo "Combien voulez-vous ajouter de pièce d'or à votre bourse ?"
			read nombre1
			POa=$(($PO+$nombre1))
			echo "Bourse =" $POa "PO"
	fi
	
	if [ ${Choix[$reponse]} = ${Choix[2]} ]
	then
		echo "Combien voulez-vous retirer de pièce d'or de votre bourse ?"
			read nombre2
			POr=$(($PO-$nombre2))
		if [ $POr -le 0 ]
		then
			POr1=0
			echo "Bourse =" $POr1 "PO"
		else
			echo "Bourse =" $POr "PO"
		fi
	fi
		
#script and edited by Hergie

#!/bin/bash

function WaitEnter(){
	echo ""
	echo "Veuillez taper sur la touche ENTREE pour revenir au Menu"
	read
}

function PersoCreate(){
	clear
	echo
	echo "Votre nom de personnage est ?"
	echo
		read reponse1
	echo
	
	echo "De quel sexe, est votre personnage?"
	declare -a Sexe=([1]="Homme" [2]="Femme")
	echo
		for i in ${!Sexe[@]}
		do
			echo $i : ${Sexe[$i]}
		done
	echo
		read choix1		
	echo

	echo "Quel Race souhaitez-vous ?"
	declare -a Races=([1]="Elfe" [2]="Nain" [3]="Humain" [4]="Barbare" [5]="Orc" [6]="Semi-Homme")
	echo
		for i in ${!Races[@]}
		do
			echo $i : ${Races[$i]}
		done
	echo
		read choix2
	echo

	echo "Quel Classe voulez-vous faire ?"
	declare -a Classes=([1]="Barde" [2]="Mage" [3]="Archer" [4]="Paladin" [5]="Berserker" [6]="Voleur")
	echo
		for i in ${!Classes[@]}
		do
			echo $i : ${Classes[$i]}
		done
	echo
		read choix3
	echo

	FOR=30
	AGI=30
	INT=30
	APP=30
	END=50
	MEN=30

	# BONUS & MALUS de FORCE
	if [ ${Sexe[$choix1]} = ${Sexe[1]} ]  
	then
		let "FOR=FOR+2"
	fi
	if [ ${Classes[$choix3]} = ${Classes[5]} ]
	then
		let "FOR=FOR+2"
	fi
	if [ ${Races[$choix2]} = ${Races[2]} ] || [ ${Races[$choix2]} = ${Races[4]} ]
	then
		let "FOR=FOR+1"
	fi
	if [ ${Classes[$choix3]} = ${Classes[4]} ]
	then
		let "FOR=FOR+1"	
	fi
	if [ ${Races[$choix2]} = ${Races[5]} ]
	then
		let "FOR=FOR+3"
	fi
	if [ ${Sexe[$choix1]} = ${Sexe[2]} ]
	then
		let "FOR=FOR-2"
	fi

	# BONUS & MALUS d'AGILITE
	if [ ${Races[$choix2]} = ${Races[6]} ]
	then
		let "AGI=AGI+1"
	fi
	if [ ${Classes[$choix3]} = ${Classes[6]} ]
	then
		let "AGI=AGI+1"
	fi
	if [ ${Races[$choix2]} = ${Races[1]} ]
	then
		let "AGI=AGI+2"
	fi
	if [ ${Classes[$choix3]} = ${Classes[3]} ]
	then
		let "AGI=AGI+2"
	fi

	# BONUS & MALUS d'INTELLIGENCE
	if [ ${Races[$choix2]} = ${Races[4]} ]
	then
		let "INT=INT-1"
	fi
	if [ ${Races[$choix2]} = ${Races[3]} ]
	then
		let "INT=INT+1"
	fi
	if [ ${Classes[$choix3]} = ${Classes[1]} ]
	then
		let "INT=INT+1"
	fi
	if [ ${Classes[$choix3]} = ${Classes[2]} ]
	then
		let "INT=INT+2"
	fi

	# BONUS & MALUS d'APPARENCE	
	if [ ${Sexe[$choix1]} = ${Sexe[1]} ]
	then
		let "APP=APP-2"
	fi
	if [ ${Races[$choix2]} = ${Races[2]} ]
	then
		let "APP=APP-1"
	fi
	if [ ${Races[$choix2]} = ${Races[3]} ] || [ ${Races[$choix2]} = ${Races[1]} ]
	then
		let "APP=APP+1"
	fi
	if [ ${Classes[$choix3]} = ${Classes[1]} ]
	then
		let "APP=APP+1"
	fi
	if [ ${Sexe[$choix1]} = ${Sexe[2]} ]
	then
		let "APP=APP+2"
	fi

	# BONUS & MALUS d'ENDURANCE
	if [ ${Races[$choix2]} = ${Races[2]} ] || [ ${Races[$choix2]} = ${Races[4]} ]
	then
		let "END=END+1"
	fi
	if [ $Classes[$choix3] = ${Classes[6]} ]
	then
		let "END=END+1"
	fi
	if [ ${Races[$choix2]} = ${Races[6]} ]
	then
		let "END=END+2"
	fi

	# BONUS & MALUS de MENTALITE
	if [ ${Races[$choix2]} = ${Races[3]} ]
	then
		let "MEN=MEN-1"
	fi
	if [ ${Classes[$choix3]} = ${Classes[4]} ]
	then
		let "MEN=MEN+1"
	fi

	echo "Combien voulez-vous ajouter..."
	echo "En FORCE ?"
		read FOR1
		FOR2=$(($FOR+$FOR1))
	echo "En AGILITE ?"
		read AGI1
		AGI2=$(($AGI+$AGI1))
	echo "En INTELLIGENCE ?"
		read INT1
		INT2=$(($INT+$INT1))
	echo "En APPARENCE ?"
		read APP1
		APP2=$(($APP+$APP1))
	echo "En ENDURANCE ?"
		read END1
		END2=$(($END+$END1))
	echo "En MENTALITE ?"
		read MEN1
		MEN2=$(($MEN+$MEN1))
	echo

	#Compétences de Races
	Elfe="Faune & Flore +2 / Vue Perçante et Ouïe fine +2"
	Nain="Marchandage +2 / Forge +2"
	Humain="Séduction +2 / Cuisine +2"
	Barbare="Faire du Feu +2 / Construire un Campement +2"
	Orc="Chasse (gros gibier) +2 / Dépeçage +2"
	SH="Chasse & Pêche +2"

	if [ ${Races[$choix2]} = ${Races[1]} ]
	then
		CR=$Elfe
	elif [ ${Races[$choix2]} = ${Races[2]} ]
	then
		CR=$Nain
	elif [ ${Races[$choix2]} = ${Races[3]} ]
	then
		CR=$Humain
	elif [ ${Races[$choix2]} = ${Races[4]} ]
	then
		CR=$Barbare
	elif [ ${Races[$choix2]} = ${Races[5]} ]
	then
		CR=$Orc
	elif [ ${Races[$choix2]} = ${Races[6]} ]
	then
		CR=$SH
	fi	

	#Compétences de Classes
	Barde="Gain d'Or dans les Villes"
	Mage="Lumière (éclaire dist-20m)"
	Archer="Discrétion +2"
	Paladin="Soins"
	Berserker="Ini +3 / Rage"
	Voleur="Détection & Désamorçage des pièges +2"
	if [ ${Classes[$choix3]} = ${Classes[1]} ]
	then	
		CC=$Barde
	elif [ ${Classes[$choix3]} = ${Classes[2]} ]
	then	
		CC=$Mage
	elif [ ${Classes[$choix3]} = ${Classes[3]} ]
	then	
		CC=$Archer
	elif [ ${Classes[$choix3]} = ${Classes[4]} ]
	then	
		CC=$Paladin
	elif [ ${Classes[$choix3]} = ${Classes[5]} ]
	then	
		CC=$Berserker
	elif [ ${Classes[$choix3]} = ${Classes[6]} ]
	then	
		CC=$Voleur
	fi
	
	#Bourse
	Bourse=100
	
	clear
	chemin=/home/hergie/Bureau/PROJET-BOT/Script_Bash/save/Personnages
	touch $chemin/$reponse1.txt
	echo "NOM : $reponse1" >> $chemin/$reponse1.txt
	echo "Sexe :" ${Sexe[$choix1]} >> $chemin/$reponse1.txt
	echo "Race :" ${Races[$choix2]} >> $chemin/$reponse1.txt
	echo "Classe:" ${Classes[$choix3]} >> $chemin/$reponse1.txt
	echo "Compétences:" >> $chemin/$reponse1.txt
	echo "-" $CR >> $chemin/$reponse1.txt
	echo "-" $CC >> $chemin/$reponse1.txt
	echo >> $chemin/$reponse1.txt
	echo "VOS STATS" >> $chemin/$reponse1.txt
	echo "Force        =" $FOR2 "(FOR)" >> $chemin/$reponse1.txt
	echo "Agilité      =" $AGI2 "(AGI)" >> $chemin/$reponse1.txt
	echo "Intelligence =" $INT2 "(INT)" >> $chemin/$reponse1.txt
	echo "Apparence    =" $APP2 "(APP)" >> $chemin/$reponse1.txt
	echo "Endurance    =" $END2 "(END)" >> $chemin/$reponse1.txt
	echo "Mentalité    =" $MEN2 "(MEN)" >> $chemin/$reponse1.txt
	echo >> $chemin/$reponse1.txt
	echo "Bourse =" $Bourse >> $chemin/$reponse1.txt
	echo >> $chemin/$reponse1.txt
	cat $chemin/$reponse1.txt
	WaitEnter
}

function EditBourse(){
	clear
	ListePerso
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
				POa=$(($Bourse+$nombre1))
				echo "Bourse =" $POa "PO"
		fi
	
		if [ ${Choix[$reponse]} = ${Choix[2]} ]
		then
			echo "Combien voulez-vous retirer de pièce d'or de votre bourse ?"
				read nombre2
				POr=$(($Bourse-$nombre2))
			if [ $POr -le 0 ]
			then
				POr1=0
				echo "Bourse =" $POr1 "PO"
			else
				echo "Bourse =" $POr "PO"
			fi
		fi
	echo ""
	WaitEnter
}

function ListePerso(){
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
	echo "Veuillez taper sur la touche ENTREE pour revenir au Menu"
	read choix
	echo
	cat $chemin/${tab_perso[$choix]}
	echo
}

#script and edited by Hergie and Dakon

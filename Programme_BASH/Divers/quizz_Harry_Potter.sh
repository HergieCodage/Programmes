#!/bin/bash
continue="y"

while [ $continue == "y" ]
do
		clear
. /d/Bureau/Programmation/Programmes/Programme_BASH/Divers/color.sh	
		total=0
		bonnereponse3="Tom Elvis Jedusor"

echo -e "${Title}##################################################################################"
echo -e "#                                                                                #"
echo -e "#                           ${Underline}QUIZZ HARRY POTTER${Normal}${Title}                                   #"
echo -e "#                                                                                #"
echo -e "##################################################################################${Normal}"
echo 

		echo -e "${Orange}question 1${Normal}"	
		echo -e "${Cyan}Combien y a t-il de livre dans la Saga Harry Potter ?"
		echo -e "P.S. : sans prendre en compte les Animaux Fantastique et L'enfant Maudit${Normal}"
			read reponse1
		if [ $reponse1 != 7 ]
		then
			echo -e "${Rouge}Faux${Normal}"
		else
			let "total=total+1"
			echo -e "${Vert}Bonne Réponse${Normal}"
		fi
		echo 
		echo -e "${Orange}Question 2${Normal}"
		echo -e "${Cyan}Dans Harry Potter, comment s'appel le rat de Ron ?"
		echo -e "[1] Pattenron, [2] Croûtard, [3] Hedwige, [4] Croque-Dur${Normal}"
			read reponse2
		if [ $reponse2 != 2 ]
		then
			echo -e "${Rouge}Faux${Normal}"
		else
			let "total=total+1"
			echo -e "${Vert}Bonne réponse${Normal}"
		fi
		echo 
		echo -e "${Orange}Question 3${Normal}"
		echo -e "${Cyan}Quel est le vrai nom de Voldemort ? (nom complet français)${Normal}"
			read reponse3
		if [ "$reponse3" = "$bonnereponse3" ]
		then
			let "total=total+1"
			echo -e "${Vert}Bonne réponse${Normal}"
		else
			echo -e "${Rouge}Faux${Normal}"
		fi
		echo 
		echo -e "${Orange}Question 4${Normal}"
		echo -e "${Cyan}Dans quel maison se trouve Luna Lovegood ?"
		echo -e "[1] Griffondor, [2] Serpentard, [3] Serdaigle, [4] Poufsouffle${Normal}"
			read reponse4
		if [ $reponse4 != 3 ]
		then
			echo -e "${Rouge}Faux${Normal}"
		else
			let "total=total+1"
			echo -e "${Vert}Bonne réponse${Normal}"
		fi
		echo 
		echo -e "${Orange}Question 5${Normal}"
		echo -e "${Cyan}Quel maison devait gagner la coupe des 4 maisons, lors de la 1ère année de Harry à Poudlard ?"
		echo -e "[1] Griffondor, [2] Serpentard, [3] Serdaigle, [4] Poufsouffle${Normal}"
			read reponse5
		if [ $reponse5 != 2 ]
		then
			echo -e "${Rouge}Faux${Normal}"
		else
			let "total=total+1"
			echo -e "${Vert}Bonne réponse${Normal}"
		fi
		echo 
		echo -e "${Orange}Question 6${Normal}"
		echo -e "${Cyan}Quel est la différence entre un animagus et un Loup-Garou ?"
		echo -e "[1] aucune, [2] un animagus n'a pas le choix que de se transformer, [3] un animagus a le choix de se transformer${Normal}"
			read reponse6
		if [ $reponse6 != 3 ]
		then
			echo -e "${Rouge}Faux${Normal}"
		else
			let "total=total+1"
			echo -e "${Vert}Bonne réponse${Normal}"
		fi
		echo 
		echo -e "${Orange}Question 7${Normal}"
		echo -e "${Cyan}A quel âge peut-on passer son permis pour Transplaner ?${Normal}"
			read reponse7
		if [ $reponse7 != 17 ]
		then
			echo -e "${Rouge}Faux${Normal}"
		else
			let "total=total+1"
			echo -e "${Vert}Bonne réponse${Normal}"
		fi
		echo 
		echo -e "${Orange}Question 8${Normal}"
		echo -e "${Cyan}Combien y a-t-il d'épreuve pour atteindre la pierre philosophale (dans le livre)${Normal}"
			read reponse8
		if [ $reponse8 != 7 ]
		then
			echo -e "${Rouge}Faux${Normal}"
		else
			let "total=total+1"
			echo -e "${Vert}Bonne réponse${Normal}"
		fi
		echo 
		echo -e "${Orange}Question 9${Normal}"
		echo -e "${Cyan}Dans quel maison été le professeur Quirrell quand il étudiait à Poudlard ?"
		echo -e "[1] Griffondor, [2] Serpentard, [3] Poufsoufle, [4] Serdaigle${Normal}"
			read reponse9
		if [ $reponse9 != 4 ]
		then
			echo -e "${Rouge}Faux${Normal}"
		else
			let "total=total+1"
			echo -e "${Vert}Bonne réponse${Normal}"
		fi
		echo 
		echo -e "${Orange}Question 10${Normal}"
		echo -e "${Cyan}Où est Né Harry ?"
		echo -e "[1] Godric's Hollow, [2] Little Hangleton, [3] Pré-au-Lard, [4] Little Whinging${Normal}"
			read reponse10
		if [ $reponse10 != 1 ]
		then
			echo -e "${Rouge}Faux${Normal}"
		else
			let "total=total+1"
			echo -e "${Vert}Bonne réponse${Normal}"
		fi
		echo 	
		echo -e "${Rose}Votre score est de" $total "sur 10${Normal}"
		echo " "
		let "totalmoins2=total-2"
		if [ $total -eq 10 ]
		then
			echo -e "${Vert}GG ! Tu connais la saga Harry Potter sur le bout des doigts !${Normal}"
		else
			if [ $total -ge 0 ] && [ $total -lt 4 ]
			then
				echo -e "${Rouge}Tu as déjà vus les Harry Potter ?"
				echo -e "non ?!"
				echo -e "alors pourquoi as tu fais ce quizz ? xD${Normal}"
			elif [ $total -ge 5 ] && [ $total -lt $totalmoins2 ]
			then
				echo -e "${Orange}C'est bien, mais des révisions s'impose !${Normal}"
			elif [ $total -ge $totalmoins2 ]
			then
				echo -e "${Bleu}Tu connais presque la saga Harry Potter sur le bout des doigts !${Normal}"
			fi
		fi
		
reponse="o"
	echo 
	echo "Voulez-vous les réponses au Quizz ? [o]=oui [n]=non"
	read reponse
	if [ $reponse = "o" ]
	then
		echo -e "${Vert}Réponses du Quizz"
		echo -e "Question 1 : Il y a 7 Tomes HARRY POTTER"
		echo -e "Question 2 : Le rat de Ron s'appel Croûtrad"
		echo -e "Question 3 : Le nom complet français de Voldemor est Tom Elvis Jedusor"
		echo -e "Question 4 : Luna Lovegood est une Serdaigle"
		echo -e "Question 5 : La maison qui devait gagné la coupe des 4 maisons lors de la 1ère année de Harry devais être la Maison Serpentard"
		echo -e "Question 6 : Un animagus est une personne qui choisit de se transformer en animal, le Loup-Garou lui n'a pas le choix"
		echo -e "Question 7 : Il faut avoir 17ans pour passer son permis pour Transplaner, âge requis pour pratiquer la magie en dehors de l'école"
		echo -e "Question 8 : Il y a 7 épreuve pour atteindre la pierre philosophale "
		echo -e "             1-Le chien à 3 Têtes"
		echo -e "             2-Le Filet du Diable"
		echo -e "             3-Les clés Volantes"
		echo -e "             4-L'échiquier Géant"
		echo -e "             5-Le Troll des Montagnes (nos héros non pas eu à l'affronter car Quirrell l'avait déjà vaincu)"
		echo -e "             6-Les potions"
		echo -e "             et 7-Le Miroir du Riséd" 
		echo -e "Question 9 : Le professeur Quirrell était dans la maison Serdaigle lors de ses études à Poudlard "
		echo -e "Question 10 : Harry est née à Godric's Hollow${Normal}"
	fi
	echo 
	echo "Voulez-vous recommencer ? [y]=oui [n]=non"
	read continue
done

#script and edited by Hergie

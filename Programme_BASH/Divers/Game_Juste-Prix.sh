#!/bin/bash
continue="y"
 
while [ $continue == "y" ]
do
	clear
	
	nombre=0 
	mdp=$RANDOM 
	let "mdp=mdp%100"
	if [ $mdp -ge 0 ] && [ $mdp -lt 10 ]
	then
		let "mdp=mdp+10"
	elif [ $mdp -gt 100 ] && [ $mdp -le 110 ]
	then
		let "mdp=mdp-10"
	fi
	let "mdpplus2=mdp+2"
	let "mdpmoins2=mdp-2"
	while [ $nombre != $mdp ]
	do
		echo "mots de passe"
		read nombre

		if [ $nombre -eq $mdp ]
		then
			echo "GG !!"
			echo "Malheureusement tu n'as rien gagné, car c'est juste un petit jeu pour s'amuser !"
			echo "Qu'est-ce que tu croyais ?"
			echo "C'est pas le JUSTE PRIX ici !"
		else
			if [ $nombre -ge 0 ] && [ $nombre -lt 10 ] 
			then
				echo "Il fait bon au pôle nord ?"
			elif [ $nombre -gt 100 ] 
			then
				echo "Tu t'es pris pour icare ? "
			fi
#			if [ $nombre -eq 21 ] || [ $nombre -eq 22 ] || [ $nombre -eq 24 ] || [ $nombre -eq 25 ]
			if [ $nombre -ge $mdpmoins2 ] && [ $nombre -lt $mdp ] || [ $nombre -gt $mdp ] && [ $nombre -le $mdpplus2 ] 
			then
				echo "Tu chauffe !"
				echo "Essaye encore tu y es presque !"
			else
				if [ $nombre -lt $mdpmoins2 ]
				then
					echo "Essaye encore !"
					echo "C'est plus !"
				elif [ $nombre -gt $mdpplus2 ]
				then
					echo "Essaye encore !"
					echo "C'est moins !"
				fi
			fi
		fi
	done

	echo "Voulez-vous refaire une partie ? [y]=oui [n]=non"
	read continue

done

#script and edited by Hergie & Dakon

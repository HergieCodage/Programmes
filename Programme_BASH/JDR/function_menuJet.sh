#!/bin/bash

function WaitEnter(){
	echo ""
	echo "Veuillez taper sur la touche ENTREE pour revenir au Menu"
	read
}

function 1D6(){
    des=$RANDOM
    let "des=des%6"
    let "des=des+1"
    echo "$des"
    WaitEnter
}

function 1D100(){
    des=$RANDOM
    let "des=des%100"
    let "des=des+1"
    echo "$des"
    WaitEnter
}

function RencontreAleatoire(){
    rencontre=$RANDOM
    let "rencontre=rencontre%20"
    let "rencontre=rencontre+1"
    
    if [ $rencontre -eq 1 ]
    then 
        echo "Vous trouvez 100 PO par Joueurs"
    elif [ $rencontre -ge 2 ] && [ $rencontre -le 4 ] 
    then 
        echo "Foire"
    elif [ $rencontre -ge 5 ] && [ $rencontre -le 7 ]
    then 
        echo "Marchand (ristourne -10% marchandage impossible)"
    elif [ $rencontre -ge 8 ] && [ $rencontre -le 10 ] 
    then 
        echo "Quête secondaire"
    elif [ $rencontre -ge 11 ] && [ $rencontre -le 19 ]
    then 
        echo "Monstres"
            if [ $rencontre -eq 11 ]
                then echo "Combat - caracoureurs"
            elif [ $rencontre -eq 12 ]
                then echo "Combat - Tortusaure"
            elif [ $rencontre -eq 13 ]
                then echo "Combat - Pégase"
            elif [ $rencontre -eq 14 ]
                then echo "Combat - Coyotes"
            elif [ $rencontre -eq 15 ]
                then echo "Combat - Gigamites"
            elif [ $rencontre -eq 16 ]
                then echo "Combat - Diablotins"
            elif [ $rencontre -eq 17 ]
                then echo "Combat - Démon"
            elif [ $rencontre -eq 18 ]
                then echo "Combat - Vouivre"
            elif [ $rencontre -eq 19 ]
                then echo "Combat - Géant"
            fi  
    elif [ $rencontre -eq 20 ]
        then 
            DPS=$RANDOM
            let "DPS=DPS%20"
            let "DPS=DPS+1"
            echo "Catastrophe Naturelle perte de $DPS PV pour les joueurs"
    fi
    WaitEnter
}
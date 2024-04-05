function BaguesPuissance(){
    declare -a BaguesPuissance=([1]="Bague de Puissance" [2]="Bague de Gumola" [3]="Bague de Tortelame" [4]="Bague de Tholsadûm" [5]="Bague du Cataclysmes")
    echo
        for i in ${!BaguesPuissance[@]}
        do
            echo $i : ${BaguesPuissance[$i]}
        done
    echo
        read choix
    echo 
    if [ $choix = 1 ]
    then
        echo "Bague de Puissance, +1 Dégat, Prix = 200 Po"
    elif [ $choix = 2 ]
    then
        echo "Bague de Gumola, +2 Dégats, Prix = 300 Po"
    elif [ $choix = 3 ]
    then
        echo "Bague de Tortelame, +3 Dégats, Prix = 400 Po"
    elif [ $choix = 4 ]
    then
        echo "Bague de Tholsadûm, +4 Dégats, Prix = 500 Po"
    elif [ $choix = 5 ]
    then
        echo "Bague du Cataclysmes, +5 Dégats, Prix = 600 Po"
    else
        Magasin
    fi
}

function BaguesSurete(){
    declare -a Boucliers=([1]="Bouclier de base" [2]="Bouclier saldur (de luxe)" [3]="Bouclier ensorcelé du champion du chaos")
    echo
        for i in ${!Boucliers[@]}
        do
            echo $i : ${Boucliers[$i]}
        done
    echo
        read choix
    echo 
    if [ $choix = 1 ]
    then
        echo "Bouclier de base, -1 Dégat, Prix = 100 Po"
    elif [ $choix = 2 ]
    then
        echo "Bouclier saldur (de luxe), -2 Dégats, Prix = 200 Po"
    elif [ $choix = 3 ]
    then
        echo "Bouclier ensorcelé du champion du chaos, -3 Dégats, Prix = 300 Po"
    else
        Magasin
    fi
}
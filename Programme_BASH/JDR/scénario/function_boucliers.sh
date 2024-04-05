function Bouclier(){
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
        WaitEnter
    fi
}
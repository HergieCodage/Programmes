#!/bin/bash
#while true
while [ continue != "n" ]
do
    nombre=$RANDOM
    let "nombre=nombre%37"
    let "testpaire=nombre%2"

    if [ $nombre -eq 0 ]
    then echo "$nombre"
    elif [ $testpaire -eq 0 ]
    then echo "$nombre noir"
    else echo "$nombre rouge"
    fi

    read continue
    #sleep 30
done


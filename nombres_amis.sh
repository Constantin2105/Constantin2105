#!/bin/bash
    echo "Entrer un nombre :"
    read nombre1
    echo "Entrer un nombre :"
    read nombre2
    i=1
    somme=0
    if [ $nombre1 -gt 0  -a $nombre2 -gt 0 ]
    then
        while [ $i -le $(($nombre1/2)) ]
        do
            
            if [ $(($nombre1%$i)) -eq 0 ]
            then
                somme=$(($somme+$i))
            fi
            ((i++))

        done

        if [ $somme -eq $nombre2 ]
        then

            echo "Les deux nombres sont amis"

        else

            echo "Les deux nombres ne sont pas amis"

        fi

    else
        echo "Erreur"
    fi

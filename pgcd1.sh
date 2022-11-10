#!/bin/bash
    echo "Entrer un nombre :"
    read nombre1
    echo "Entrer un nombre :"
    read nombre2


    if [ $nombre1 -lt 0  -o $nombre2 -lt 0 ]
    then
        echo 'Erreur entrer des entiers positifs'
    fi



    if [ $nombre1 -gt 0  -a $nombre2 -gt 0 ]
    then
    if [ $nombre1 -eq 0 ]
    then
        echo "PGCD :" $nombre2 

    fi
    if [ $nombre2 -eq 0 ]
    then
        echo "PGCD :" $nombre1

    fi

    if [ $nombre1 -gt $nombre2 ]
    then

   
    while [ $(($nombre1%$nombre2)) -ne 0 ]

    do

        reste=$(($nombre1%$nombre2))
        nombre1=$nombre2
        nombre2=$reste
    done
    echo "PGCD :" $nombre2
    fi

     if [ $nombre2 -gt $nombre1 ]
    then

   
    while [ $(($nombre2%$nombre1)) -ne 0 ]

    do

        reste=$(($nombre2%$nombre1))
        nombre2=$nombre1
        nombre1=$reste
    done
    echo "PGCD :" $nombre1
    fi
    fi
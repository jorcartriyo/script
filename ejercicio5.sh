#! /bin/bash
#En un fichero tengo una palabra clave. Haz un script que muestre si dicha palabra es el parámetro pasado o no.
clear
echo 1dam >> fichero.txt #creo el fichero.txt con la palabra que es 1dam
palabra=`cat fichero.txt`
if [ "$1" = "$palabra" ]
    then 
        echo La palabra es $palabra
    else
        echo La palabra no es esa
fi
rm fichero.txt # borro el fichero que he creado con la palabra clave
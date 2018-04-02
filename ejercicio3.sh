#! /bin/bash
#Escribir un script que al pasarle por argumento un parámetro, determine si es archivo, directorio, o si el parámetro no existe.
clear

if [ $# -lt 1 ] 
    then
       echo  "No has introducido ningún parámetro"
elif [ -d $1 ]
    then
        echo "$1 es un directorio."
    elif [ -f $1 ]
        then
            echo "$1 es un archivo."
                else
                    echo "$1 no existe."
fi
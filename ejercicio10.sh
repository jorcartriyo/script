#! /bin/bash
#realizar un script que reciba varios parametros y nos diga cuantos de esos parametros son de directorios y cuantos son archivos. $# contador que indica cuantos parametros se pasan.
clear
cont=0
contFich=0
for entrada in $*
    do 
        if [ -d $entrada ]
            then 
                cont=`expr $cont + 1`
        elif [ -f $entrada ]
            then 
                contFich=`expr $contFich + 1`
            else
                echo "$entrada no es ni fichero ni directorio"
        fi
    done
echo "Has introducido $cont directorios y $contFich ficheros"
echo "Has introducido $# parámetros"

   
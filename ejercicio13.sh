#! /bin/bash
#Realiza un script que introduzca número por parámetro y muestre tabla de multiplicar.
clear
if echo "$1" | egrep -q '^[0-9]+([.][0-9]+)?$'
    then
        echo "La tabla de multiplicar de $1 es: "
            multiplicador=1
            while [ $multiplicador -lt 11 ]
                do
                    resultado=`expr $1 \* $multiplicador`
                    echo "$1 x $multiplicador = $resultado"
                    multiplicador=`expr $multiplicador + 1`
                done
    else
        echo "Introduce un número como parámetro"
fi
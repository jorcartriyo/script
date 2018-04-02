#! /bin/bash
#Nos pide la edad y nos dice si es mayor de edad o menor.
clear
read -p "Introduce tu edad " edad
if [ -e $edad ]
    then echo "Introduce un dato"
    exit 1
fi    
if echo "$edad" | egrep -q '^[0-9]+([.][0-9]+)?$'
    then
        if [ $edad  -lt 18 ]
            then 
                echo "Eres menor de edad"
        elif [ $edad -ge 18 ]
            then 
                echo "Eres mayor de edad"    
        fi
        exit 0
else
    echo "Introduce un número "
    exit 1
fi


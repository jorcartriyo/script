#! /bin/bash
#Script que nos diga al pulsar una tecla, si es letra, numero o caracter especial.
clear
echo "Pulsa una tecla y te diré si es letra, número o caracter especial "
read -r pulsa
if  [ -e $pulsa ]
    then echo "La tecla enter es para validar, pulsa otra tecla "
    exit 1
fi
case $pulsa in
    [a-z,A-Z]) echo "Has pulsado la letra $pulsa "
    ;;
    [0-9]) echo "Has pulsado el número $pulsa "
    ;;
    *) echo "Has introducido el caracter especial $pulsa "
    ;;
esac
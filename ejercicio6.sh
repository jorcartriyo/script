#! /bin/bash
#Tenemos un menu principal:
#   (1) Suma
#        Lee dos números y los suma.
#   (2) Resta
#        Lee dos números y los resta.
#   (3) Multiplicación
#        Lee dos números y los multiplica.
#   (4) Salir
#        Termina el script.

clear
operacion=4
while true
do
    echo ""
    echo "Estas son las opciones de las que dispones: " 
    echo ""
    echo "(1) Suma"
    echo "(2) Resta"
    echo "(3) Multiplicación" 
    echo "(4) Salir"
    echo ""
    read -p "Elige la opción que quieres realizar: " operacion
    if [ $operacion = 4 ]
        then
            clear
            echo "Hasta la próxima"
            exit 2;
    fi
    read -p "Introduzca el primer número " numero1
    read -p "Introduzca el segundo número " numero2 
    case $operacion in
        1) 
            echo "la suma de $numero1 y $numero2 es " `expr $numero1 + $numero2`
        ;;
        2)
            echo "la resta de $numero1 y $numero2 es " `expr $numero1 - $numero2`
        ;;
        3)
            echo "la multiplicacón de $numero1 y $numero2 es " `expr $numero1 \* $numero2`
        ;;
    esac
done
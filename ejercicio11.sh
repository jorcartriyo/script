#! /bin/bash
#Mostramos menu, con productos para vender, luego nos pide que introduzcamos la opcion. luego mensaje que indica que introduzca moneda. Si ponemos precio exacto nos da mensaje, "Gracias buen provecho", si ponemos menos, nos diga falta. Si poner mas valor, nos indique el cambio con mensaje.
clear
echo "Bienvenido  a  mi tienda "
echo "1. Bocadillo 6 euros "
echo "2. Chocolatinas 3 euros"
echo "3. Bebida 2 euros "
read -p "Introduzca una opción " opcion
case $opcion in
    1)
        precio=6
    ;;
    2)
        precio=3
    ;;
    3)
        precio=2
    ;;
    *)
        echo "Opción incorrecta"
        exit 1;
    ;;
esac
read -p "Introduzca el dinero " dinero
while [ $dinero -lt $precio ]
    do 
        falta=`expr $precio - $dinero`
        read -p "Introduzca mas dinero, faltan $falta euros " mas
    dinero=`expr $dinero + $mas`
done
if [ $dinero -gt $precio ]
    then
        cambio=`expr $dinero - $precio`
        echo "Gracias por su compra su cambio es de $cambio euros"
else
echo "Gracias, buen provecho"
fi
#! /bin/bash
#Realizar un script que pida introducir la ruta de un directorio por teclado (Hay que validar que la variable introducida sea un directorio) nos diga cuantos archivos y cuantos directorios hay dentro de ese directorio.
clear
directorio=0
until [ -d $directorio ] 
    do 
        read -p "Introduce la ruta de un directorio " directorio
done

contadorArchivos=`ls -lAh $directorio | grep "^-" | wc -l`
contador=`ls -lAh $directorio | grep "^d" | wc -l`    
echo "Dentro de $directorio hay $contador directorios y $contadorArchivos archivos."

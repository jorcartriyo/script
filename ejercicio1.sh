#! /bin/bash
#Escriba un script que elimine un archivo o directorio pasado como parámetro, y le pregunte si está seguro de llevar a cabo la acción.
clear
if [ $# -lt 1 ] 
    then
      echo  "No has introducido ningún parámetro"
    else
        rm -i $1
fi 

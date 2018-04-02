#!/bin/bash
#Escribir un script que pueda mostrar información de un comando al ejecutar dicho script y pasar como parámetro el comando.
if [ $# -lt 1 ] 
    then
      echo  "No has introducido ningún parámetro"
    else
        man $1 
fi
#! /bin/bash
#Script que reciba un nombre de fichero, verifique que existe y que es un fichero de lectura-escritura, lo convierta en ejecutable para el usuario y el grupo y muestre el estado final de los permisos.
clear   
read -p "Introduce la ruta de un fichero " fichero
until [ -f $fichero ]
    do
        read -p "Introduce la ruta de un fichero válido " fichero
    done 
if [ -r $fichero ]
    then 
        echo "El fichero $fichero tiene permisos de lectura"
            else
                echo "El fichero $fichero no tiene permisos de lectura."                
fi
if [ -w $fichero ]
    then 
        echo "El fichero $fichero tiene permisos de escritura" 
            else 
                echo "El fichero $fichero no tiene permisos de escritura"                 
fi
echo "Concediendo permisos para usuario y grupo al fichero $fichero................."
echo "Permisos del fichero $fichero"
chmod 770 $fichero
ls -l $fichero


        

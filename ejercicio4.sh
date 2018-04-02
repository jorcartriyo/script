#! /bin/bash
#Realiza un script que compruebe si el usuario actual del sistema es blas, si es así visualiza su nombre 5 veces, sino te despides de él amigablemente.
clear
USER=`whoami`
if [ $USER = "blas" ]
    then   
       for i in `seq 1 5`       
            do 
             echo $USER                           
        done            
    else
        echo "Bueno $USER, nos vemos otro día"
fi
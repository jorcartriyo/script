#! /bin/bash
#Vaciamos las reglas
clear
iptables -F
iptables -t nat -F
#Establecemos politicas predeterminada
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -t nat -P PREROUTING ACCEPT
iptables -t nat -P POSTROUTING ACCEPT
while true
do
	echo ""
	echo "(1) Abre un puerto"
	echo "(2) Cierra un puerto"
	echo "(3) Aceptar todo de localhost"
	echo "(4) Rechazar todo de localhost"
	echo "(5) Ver el estado de iptables"
	echo "(6) Salir"
	read -p "Selecciona la operación que quieras realizar con iptables " operacion
	if [ -e $operacion ]
		then
			echo "Por favor introduce una operación"
		fi
	case $operacion in
	1)
		read -p "Selecciona el puerto que quieres abrir " puerto
		if echo "$puerto" | egrep -q '[0-9]'
			then
				iptables -A INPUT -p tcp --dport $puerto -j ACCEPT
				echo "Puerto $puerto abierto"
			else
				echo "Puerto no válido, selecciona de nuevo la operación e indica un puerto válido"
		fi
		;;
	2)
		read -p "Selecciona el puerto que quieres cerrar " puerto
		if echo "$puerto" | egrep -q '[0-9]'
			then
		iptables -A INPUT -p tcp --dport $puerto -j DROP
		echo "Puerto $puerto cerrado"
			else
				echo "Puerto no válido, selecciona de nuevo la operación e indica un puerto válido"
		fi
		;;
	3)
		/sbin/iptables -A INPUT -i lo -j ACCEPT
		echo "Localhost abierto"
		;;
	4)
		/sbin/iptables -A INPUT -i lo -j DROP
		echo "Localhost cerrado"
		;;	
	5)
		iptables -L -n
		;;
	6)
		echo "Hasta la próxima "
		exit 2;
		;;
	esac	
done


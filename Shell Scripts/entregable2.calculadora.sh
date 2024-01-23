#!/bin/bash
#
# Calculadora
# Autor: Sergio Hernández
# Fecha: 23.1.2024


clear

echo "Sergio Hernández Díaz"

if [ $# -ne 2 ]; then
	echo
	echo "Error. Número de parámetros incorrectos."
	echo
	exit
fi

if [ -f $1 ]; then
	echo
	echo "Este fichero ya existe."
	exit
fi

echo
echo "$op"
echo "$op1"
echo "$op2"
echo
i=1
while [ $i -le $2 ]; do
	read -p "Operación Op1 Op2: " op op1 op2
	case $op in
		S)
			echo
			echo "Has escogido suma."
			echo
			suma=$(($op1+$op2))
			echo "$op1 + $op2 = $suma"
			echo $op $op1 $op2 >> $1
		;;
		R)
			echo
			echo "Has escogido resta."
			echo
			resta=$(($op1-$op2))
			echo "$op1 - $op2 = $resta"
			echo $op $op1 $op2 >> $1
		;;
		M)
			echo
			echo "Has escogido multiplicación."
			echo
			mult=$(($op1*$op2))
			echo "$op1 x $op2 = $mult"
			echo $op $op1 $op2 >> $1
		;;
		D)
			echo
			echo "Has escogido división."
			echo
			div=$(($op1/$op2))
			echo "$op1 / $op2 = $div"
			echo $op $op1 $op2 >> $1
		;;
		X)
			echo
			echo "Saliendo del script."
			exit
		;;
		*)
			echo
			echo "Esta operación no existe."
			echo
		;;
	esac
i=$(($i+1))
done

p=$(pwd)
echo $p/$1
cat $1

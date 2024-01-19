#!/bin/bash
#
# Agenda
# Autor: Sergio Hernández
# Fecha: 17.1.2024


clear

i=1

while [ $i != e ]; do
	echo "Agenda de contactos"
	echo "a- Añadir una entrada"
	echo "b- Buscar por DNI"
	echo "c- Ver la agenda completa"
	echo "d- Eliminar todas las entradas de la agenda"
	echo "e- Finalizar"
	read -p "Introduzca una de las opciones: " opcion
	case $opcion in
		a)
			echo
			echo "Has seleccionado añadir una entrada."
			echo
			read -p "Introduzca DNI: " dni
			echo
			if grep "^$dni" agenda.txt 2>/dev/null ; then
				echo
				echo "Error. Usuario existente."
				echo
			else
				read -p "Introduzca un nombre: " nombre
				read -p "Introduzca los dos apellidos: " apellidos
				read -p "Introduzca la localidad: " localidad
				echo $dni:$nombre:$apellidos:$localidad >> agenda.txt
				echo
			fi
		;;
		b)
			echo
			echo "Has seleccionado buscar por dni."
			echo
			read -p "Introduzca un DNI: " dni
			if grep "^$dni" agenda.txt 2>/dev/null ; then
				nombre=$( grep "^$dni" agenda.txt | cut -d ":" -f 2 )
				apellidos=$( grep "^$dni" agenda.txt | cut -d ":" -f 3 )
				localidad=$( grep "^$dni" agenda.txt | cut -d ":" -f 4 )
				echo
				echo "La persona con DNI número "$dni" es: "$nombre" "$apellidos", y vive en "$localidad"."
				echo
			else
				echo
				echo "Error. DNI incorrecto."
			fi
		;;
		c)
			echo
			echo "Has seleccionado ver la agenda completa."
			echo
			if [ -s agenda.txt ]; then
				echo
				cat agenda.txt
				echo
			else
				echo
				echo "Agenda vacía."
				echo
			fi
		;;
		d)
			echo
			echo "Has seleccionado eliminar todas las entradas de la agenda."
			echo
			echo > /home/alumno/Escritorio/ScriptsClase/agenda.txt
			echo "Se ha eliminado el contenido."
			echo
		;;
		e)
			echo
			echo "Ha seleccionado finalizar."
			echo
			exit
		;;
	esac
done

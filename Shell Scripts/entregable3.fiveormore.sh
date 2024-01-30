#!/bin/bash
#
# Five or more
# Autor: Sergio Hernández
# Fecha: 29.01.2024


clear

fich=$(ls $2)

if [ $# -ne 2 ]; then
	echo "Error. Número de parámetros incorrectos."
	exit
fi
if [ -f $1 ]; then
	echo "Error. Este fichero ya existe."
	exit
fi
if [ ! -d $2 ]; then
	echo "Error. Este directorio no existe."
	exit
fi
if [ -z $fich ]; then
	echo "Error. Este directorio está vacío."
	exit
fi

echo "Sergio Hernández Díaz"
echo

ficheros=$(ls $2/*.txt)
echo "Se mostrarán todos los ficheros del directorio:"
echo
echo $ficheros
echo
echo "Se mostrarán todos los archivos que contengan al menos 5 líneas:"
echo
for i in $ficheros; do
	if [ -f $i ]; then
		lineas=$(cat $i | wc -l)
		if [ $lineas -ge 5 ]; then
			echo $i
			echo $i >> $1
			palabras=$(cat $i | wc -w)
			echo "El fichero tiene $palabras." > $i.q
			cat $i >> $i.q
		fi
	fi
done

numero=$(cat $1 | wc -l)
echo $numero >> $1
🤫

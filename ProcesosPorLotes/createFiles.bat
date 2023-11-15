@echo off
REM createFiles
REM
REM Autor: Sergio Hernández Díaz
REM Fecha: 15-11-2023 

title Estructura concidiconal
echo Pulsa 1 para crear un archivo .txt
echo Pulsa 2 para crear un archivo .bat
set /p Num1="Introduzca un numero: "
set /p name="Introduzca un nombre para el archivo: "
set /p ruta="Introduzca una ruta para el archivo: "
if %Num1% == 1 goto .txt
if %Num1% == 2 goto .bat

:.txt 
type nul > %name%/%ruta%.txt
echo Se ha creado el archivo .txt
exit

:.bat
type nul > %name%/%ruta%.bat
echo Se ha creado el archivo .bat
exit
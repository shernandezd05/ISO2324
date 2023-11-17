@echo off
REM Directories.bat
REM
REM Autor: Sergio Hernández Díaz
REM Fecha: 15-11-2023 

echo Pulsa 1 para crear un fichero.
echo Pulsa 2 para mostrar el arbol de directorios de la carpeta usuario.
echo Pulsa 3 para mostrar los archivos .txt.
echo Pulsa 4 para crear un directorio.
echo Pulsa 5 para copiar el contenido de tu carpeta usuario al escritorio.

set /p Num="Introduzca un numero (1-5): "

if %Num% == 1 goto opcion1
if %Num% == 2 goto opcion2
if %Num% == 3 goto opcion3
if %Num% == 4 goto opcion4
if %Num% == 5 goto opcion5

:opcion1
set /p nombrefichero="Introuzca un nombre para el fichero: "
type nul > %fichero%
exit

:opcion2
tree %USERPROFILE%
pause
exit

:opcion3
dir *.txt
pause
exit

:opcion4
mkdir alfedoff marinapq ramonam
exit

:opcion5
xcopy %USERPROFILE% C:\COPIA /E
exit

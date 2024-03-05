a = open("/home/alumno/Escritorio/rutas.txt", "r")

fich = a.readlines()
listaF = []
listaD = []

import os

for i in fich:
    if os.path.isfile(i) == True:
        print("Esta ruta es de un fichero·")
        listaF.append(i)
    if os.path.isdir(i) == True:
        print("Esta ruta es de un directorio.")
        listaD.append(i)

print(listaF)
print(listaD)

while True:
    print("1- Introduzca el nombre de un fichero para eliminarlo.")
    print("2- Introduzca el nombre de un directorio para mostrar su información.")
    print("3- Introduzca el nombre de un fichero para copiarlo.")
    print("4- Introduzca una de las listas.")
    print("5- Salir.")
    op = input("Introduzca una de las opciones: ")
    if op == '1':
        fichero = input("Introduzca el nombre del fichero: ")
        os.remove(fichero)
    if op == '2':
        directorio = input("Introduzca el nombre del directorio: ")
        os.system('ls '+directorio)
    if op == '3':
        fichero = input("Introduzca el nombre del fichero: ")
        directorio = input("Introduzca el nombre del directorio: ")
        os.system('cp '+fichero +directorio)
    if op == '4':
        lista = input("¿Desea ver la lista de ficheros o la lista de directorios?: ")
        if lista == 'ficheros':
            print(listaF)
        if lista == 'directorios':
            print(listaD)
    if op == '5':
        print("Saliendo...")
        exit()
    break

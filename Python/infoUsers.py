print("Opción 1: Muestra información del SSOO e información de la CPU.")
print("Opción 2: Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.")
print("Opción 3: Pedir al usuario un directorio. Comprobar si existe y si es un direcotrio; en caso contrario lo crea.")
print("Opción 4: Salir.")

import os
import cpuinfo

root=os.getuid()
if root != 0:
    print("No eres root.")
    exit()

while root == 0:
    print()
    op = int(input("Introduzca una de las opciones: "))

    if op == 1:
        print(os.uname())
        print(cpuinfo.get_cpu_info()["brand"])
    if op == 2:
        fich = open("/etc/passwd", "r")
        lista = fich.readlines()
        user=input("Introduzca un nombre de usuario: ")
        enc=False
        for i in lista:
            if user in i:
                print(i)
                enc=True
        if enc == True:
            print("El usuario "+user+" ya existe")
        else:
            os.system("useradd "+user)
            print("Se ha creado el nuevo usuario.")
        fich.close()
    if op == 3:
        dir=input("Introduzca el nombre de un directorio: ")
        if os.path.isdir(dir)== True:
            print("Este directorio ya existe.")
        else:
            os.system("mkdir "+dir)
            print("Se ha creado el nuevo directorio.")
    if op == 4:
        print("Saliendo...")
        exit()
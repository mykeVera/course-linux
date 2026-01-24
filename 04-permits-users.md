/---------- INTRODUCTION ----------/

cat /etc/passwd                                     ver un listado de usuarios con su identificador, su grupo y donde esta ubicado

cat /etc/passwd | grep [name_user]                  datos solo del usuario

sudo cat /etc/shadow                                ingresamos al directorio siempre y cuando pongamos la contraseña del usuario


/---------- PERMISOS DE LECTURA, ESCRITURA Y EJECUCIÓN ----------/

Note: Segun estos permisos "drwxr-x---", a parte de la primera letra "d", las primeras 3 letras que le siguen "rwx" hace referencia a los permisos del usuario, los segundos 3 siguientes "r-x", hacen referencia a los permisos del grupo, y los ultimos 3 "---", hacen referencia a los permisos de todos los demas.

r: read
w: write
x: execution

find /var/log -iname *.log              nos listará algunos archivos donde veremos "Permission denied"

ls -ld /var/log/installer               muestra los datos del directorio: "drwxr-x---"


/---------- USUARIO ROOT ----------/

Note: el usuario root puede destruir todo el sistema irreparablemente, por ende, no es conveniente utilizarlo salvo ocasiones en especifico cuando se requiera.

sudo cat /etc/passwd                    nos muestra identificador de usuario y grupo como cero "0"


/---------- MODIFICACION DE PERMISOS ----------/

Note: La representacion de permisos en linux esta en base octal "01234567".

La representacion se puede dar con numeros segun la tabla:
X = 1
W = 2
R = 4

chmod 751 prueba.txt                    con el comando "chmod" cambiamos los permisos de usuario donde 7 es todos los permisos (1+2+4) para el archivo, 5 es permisos de lectura y ejecucion (4+1), y 1 representa los permisos para todos los demas que es solo ejecucion (1).


/---------- UMASK ----------/

Note: Los archivos o directorios que se crean vienen con los permisos por defecto de "rw-rw-r--", pero para poder cambiar la configuración utilizamos el comando "umax".

umask 0006                              obiando el primer digito, colocamos "0" para indicarle que no le queremos quitar ningun permiso al usuario, el segundo "0" lo mismo para el grupo, y el ultimo digito "6", indicando los permisos de lectura y escritura (4+2) que no queremos asignarle a todo el mundo.


/---------- RESTRICCIONES ADICIONALES ----------/

Note:
setuid (4): como si fueses dueño
setgid (2): como si pertenecieres al grupo
sticky bit (1): este solo se aplica a directorios e indica que el contenido del directorio solo lo puede eliminar el o los usuarios que pertenezcan al grupo

chmod 7754 prueba.txt                   el numero 7 inicial (antes de los permisos convencionales "754"), es el que le asignamos para permisos, en este caso todos los permisos "7"


/---------- SUDO ----------/

sudo -i                                 este comando nos permite ejecutar comandos como usuario root en un breve tiempo, siempre y cuando introduzcamos la contraseña del usuario principal, que es el usuario que se instala con el sistema de linux.


/---------- AGREGAR USUARIOS ----------/

sudo adduser felipe                     previamente que ingresemos la contraseña del usuario principal, se crea un nuevo usuario y grupo con el mismo nombre


/---------- GESTION DE GRUPOS ----------/

groups                                  veo a que grupos pertenece el usuario actual

groups felipe                           muestra los grupos de otro usuario

groups felipe root                      muestras los grupos de ambos usuarios

sudo addgroup usuarios                  agrega un nuevo grupo

sudo delgroup usuarios                  elimina un grupo


/---------- MODIFICAR USUARIOS ----------/

sudo usermod -aG usuarios nicolas       agrega el grupo al usuario de nicolas

sudo usermod -L nicolas                 bloquea un usuario

sudo usermod -U nicolas                 desbloquear un usuario

sudo passwd nicolas                     podemos cambiar la contraseña del usuario


/---------- GESTION DE PROPIETARIOS ----------/

sudo chown juan prueba.txt              cambia de propietario un archivo

sudo chown juan: prueba.txt             cambiar de propietario y grupo


/---------- SUBSTITUTE USER ----------/

su chanchito                            nos cambiamos de usuario previa contraseña del usuario indicado


/---------- SUDOERS ----------/

su - chancho                            cambiamos de usuario y nos redirigue a su carpeta raiz

sudo cat /etc/sudoers                   muestra el archivo que podemos editar para agregar usuarios a sudo           
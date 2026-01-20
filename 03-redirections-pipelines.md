/---------- INTRODUCTION ----------/

Note: todo en Linux es un archivo
standar input               entradas del teclado, index 0
standar ouput               mensajes de exito, index 1
standar error               mensajes de error, index 2
file descriptor             asigan asigna un indice a cada archivo que abrimos en linux

ls -al /dev/sdtout              accedemos al archivo de mensajes de exito, apunta al archivo /dev/pts/0

ls -al /dev/stderr              accedemos al archivo de mensajes de error, tambien apunta al archivo /dev/pts/0

ls -al /dev/stdin               accedemos al archivo de mensajes de error, tambien apunta al archivo /dev/pts/0


/---------- REDIRECCIONANDO SALIDAS ----------/

ls -al oeoeoe 2> salida.txt             reenviar salida del error a un archivo txt, se pone el indice antes del simbolo del error

ls -al oeoeoe &> salida.txt             reenviar la salida de exito y la salida de error dentro del mismo archivo


/---------- DISPOSITIVO VIRTUAL NULL ----------/

ls > /dev/null                                      tomar la salida y la elimina automaticamente, no lo envia a un archivo

find /var/log -iname *.log 2> /dev/null             muestra los mensaje de existo, y todo lo de error ah sido descartado


/---------- DISPOSITIVO VIRTUAL NULL ----------/

cat < hola_mundo.txt                                redireccionar lo que se encuentra en un archivo a cat

sort < salida.txt                                   redireccionar lo que se encuentra en un archivo a sort


/---------- PIPELINES ----------/

ls -al /var/log | more                              el operador de redireccionamiento toma la salida y la ingresa como entrada al siguiente comendo

find . -iname "*.txt" | grep "mundo"                busca los archivos que tiene la extensión de ".txt" y dentro de su nombre contienen la cadena de texto "mundo"

ls /bin /usr/bin | sort | uniq | less               me devuelve el listado ordenado, a su vez unicos , y ver todo como el comando less 

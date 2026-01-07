/---------- CREANDO Y COPIANDO ARCHIVOS ----------/

pwd                                     print working directory, imprime la ruta donde me encuentro

touch archivo.txt                       crea un archivo

mkdir curso_linux/                      crea un directorio

echo hola                               imprime en la consola

ls                                      lista todos los archivos y directorios

ls -a                                   lista todos, visibles y ocultos

ls -l                                   lista todos los directorios solo visibles

ls -al                                  lista pero con mas detalles

ls -al archivo.txt                      lista el archivo en especifico con detalle del mismo, tambien cambiamos la fecha de la actualización

cp archivo.txt archivo-copia.txt        copia el archivo

cd -r Downloads/ copia_downloads        copia el directorio y todo su contenido


/---------- MOVIENDO DIRECTORIOS Y ARCHIVOS ----------/

mv archivo-copia.txt archivo-movido.txt             mueve un archivo a otro renombrandolo

mv copia_downloads/ downloads_mv                    muere un directorio a otro renombrandolo

mv -v downloads_mv/ nuevo_downloads                 renombra el directorio


/---------- CREANDO Y ELIMINANDO DIRECTORIOS ----------/

rm archivo-movido.txt                   eliminar un archivo

rmdir curso_linux/                      eliminar directorios vacios

rm -r nuevo_downloads/                  eliminar directorios con todo lo que tenga en su interior


/---------- CREANDO ARCHIVOS CON NANO ----------/

nano ejemplo.txt                        ejecuta o abre al archivo en editor nano


/---------- VISUALIZANDO ARCHIVOS CON MORE Y LESS ----------/

cat ejemplo.txt                         muestra todo el contenido del archivo en consola

more .bashrc                            muestra el contenido parcialmente indicando un porcentaje de visualización

less .bashrc                            muestra el contenido pero mostrando linea por linea con las fechas del teclado


/---------- VISUALIZANDO EL CONTENIDO DE UN ARCHIVO ----------/

head .bashrc                            muestra las primeras 10 lineas por defecto del achivo

head -n 5 .bashrc                       muestra de manera personalizada las primeras 5 lineas del archivo

tail .bashrc                            muestra las ultimas 10 lineas por defecto del achivo

tail -n 5 .bashrc                       muestra de manera personalizada las ultimas 5 lineas del archivo

tail -f .bashrc                         monitorea e imprime en consola los cambios en tiempo real que puedan darse en el archivo


/---------- OPERADOR DE REDIRECCIONAMIENTO ----------/

cat ejemplo.txt > prueba.txt            redirigue el contenido a otro nuevo archivo

echo hola mundo > prueba.txt            reemplaza el texto del arhivo

echo hola mundo >> prueba.txt           añade texto en una nueva linea


/---------- BUSQUEDA DE TEXTO ----------/

cat ejemplo.txt prueba.txt              muestra el contenido de ambos archivos en consola

grep Hola ejemplo.txt                   busca el texto hola en el archivo, case sensitive

grep -i Hola ejemplo.txt                busca el texto Hola en el archivo, ignorando el case sensitive

grep -i Hola *.txt                      busca en todos los archivos que tengan la extensión .txt

grep -ir Hola /home/mike                busca en el directorio utilizando una ruta absoluta

grep -ir Hola .                         busca en el directorio utilizando una ruta relativa, donde me encuentro actualmente


/---------- BUSQUEDA DE ARCHIVOS Y DIRECTORIOS ----------/

find Downloads/                                             buscar en el directorio indicado

find type d                                                 lista solo los directorios donde me encuentro

find type f                                                 lista solo los archivos donde me encuentro

find type f -name "prueba*"                                 lista todos los archivos donde contengan la palabra "prueba" inicialmente          

find type f -name ".*txt"                                   lista todos los archivos que tengan la extensión de ".txt"

find type f -name ".*txt" > archivos_texto.txt              transfiere todo el resultadoo salida de la busqueda en un nuevo archivo


/---------- ENCADENANDO COMANDOS ----------/

mkdir prueba; cd prueba; echo listo                         ejecuta todos los comandos de izquierda a derecha

mkdir prueba && cd prueba && echo listo                     ejecuta los comandos de izquierda a derecha siempre y cuando tengan exito

mkdir prueba || cd prueba || echo listo                     ejecuta los comandos de izquierda a derecha siempre y cuando el siguiente de la izquierda falla

find | more                                                 traslada toda la salida de find al comando de more para ir viendo el contenido linea a linea

mkdir prueba && \                                           poder colocar comandos en la consola en multilineas con "\"
>cd prueba \
>echo "la carpeta se creo"                                  


/---------- ATAJOS UTILES ----------/

Ctrl + R                    abre una aplicacion en consola para buscar alguna palabra en todo el historial de comandos que realizamos

Ctrl + C                    detiene la ejecucion de la consola

Tab                         para completar comandos o nombres de archivos o directorios


/---------- COMANDOS DE AYUDA ----------/

man ls                      muestra una documentacion o manual del comando "ls"

help type                   muestra información sobre como se debe usar el comando "type"

info ls                     brinda mucha más información sobre "man" y "help"



/---------- ALIAS ----------/

alias cls="clear; ls"                       creamos con alias un comando temporal "cls" para ejecutar comandos encadenados

unalias cls                                 eliminar alias creados


/---------- ENLACES SIMBOLICOS ----------/

Nota:
Los permisos de archivos que empiezan con la letra:
l: enlaces simbolicos
d: directorios
-: archivos

ln -s ejemplo.txt enlace_ejemplo.txt                crea un enlace simbolico del archivo original

cat enlace_ejemplo.txt                              visualizar el contenido de archivo original a travez del enlace simbolico


/---------- ENLACES DUROS ----------/

ln prueba.txt copia_en_duro.txt                     crea un enlace en duro del archivo original


/---------- WILDCARDS ----------/

echo *                                          imprimen todos los directorios o archivos donde estoy actualmente

echo prueba*.txt                                muestra coincidencias (archivos o directorios) que inicien con la palabra "prueba" y tengan extensión ".txt"

echo prueba?.txt                                solo un caracter

echo prueba[1-4].txt                            busca las coincidencias de prueba1 o prueba2, hasta el 4

echo prueba[!12].txt                            muestra todos los archivos que no tengan "!" 1 y 2      


/---------- EXPANSIONES DE LA SHELL ----------/

echo prueba{1..5}.txt                           // prueba1.txt prueba2.txt prueba3.txt prueba4.txt prueba5.txt

echo /*/log                                     mostrar todos los directorios que contengan el directorio log dentro

echo $((3 + 3))                                 // 6


/---------- COMMAND SUBSTITUTION ----------/

nano $(grep -lr "chanchito feliz" ./*)             abre el archivo encontrado que contiene el texto "chanchito feliz" en el directorio actual


/---------- COMILLAS DOBLES ----------/

touch "hola mundo.txt"                      crea un archivo con espacio, necesariamente se coloca "..."

echo "\$(which mv)"                         con \ saltamos la funcionabilidad especial y muestralo tal cual es


/---------- CARACTER DE ESCAPE ----------/

echo -e "texto hola \t mundo"                       el caracter "\t" es para tabular el texto

echo -e "texto hola \n mundo"                       el caracter "\n" es para salto de linea

echo "chanchito feliz" > hola\ mundo.txt            con "\" hacemos que no se pueda redirecciona el texto a "hola mundo.txt"

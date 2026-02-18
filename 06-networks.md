/---------- INTRODUCCION ----------/

ip r                                        muestra el detalle de la red actual

ping xxx.xxx.xxx.xxx                        muestra al igual que en windows el envio de paquetes de red


/---------- CURL ----------/

sudo apt install curl                       para instalar curl con permisos de sudo, y sirve para intercambiar datos entre sitios web


/---------- WGET ----------/

NOTA: gwet es una herramienta de línea de comandos que sirve para descargar archivos desde internet usando protocolos como HTTP, HTTPS, FTP

wget https://ejemplo.com/archivo.zip                            descarga de un archivo

wget -O nuevo_nombre.zip https://ejemplo.com/archivo.zip        descargar y guardar con otro nombre

wget -c https://ejemplo.com/archivo.zip                         reanudar descarga

wget -b https://ejemplo.com/archivo.zip                         reanudar en segundo plano

wget -r https://ejemplo.com                                     descargar un sitio completo


/---------- SSH ----------/

sudo apt install openssh-server                                 instalacion del servicio

service ssh status                                              nos da el estado del servicio

ssh [user]@[ip_remota]                                          conectarme a una maquina remota colocando el usuario y su ip


/---------- FTP ----------/

sudo apt install vsftpd                                         instalacion del servicio

service vsftpd status                                           nos da el estado del servicio

ftp [ip_remota]                                                 conectarme a una maquina remota colocando el usuario


/---------- SFTP ----------/

sftp [user]@[ip_remota]                                         conectarme a una maquina remota colocando el usuario y su ip


/---------- PUBLIC KEY LOGIN ----------/

ssh-keygen -t rsa -b 4096                                       genera una combinacion de una llave publica y privada


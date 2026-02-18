/---------- GESTION DE PAQUETES ----------/

sudo apt update                                             actualiza los paquetes que actualmente tenemos en el sistema

sudo apt install--only-upgrade [name_paquete]               para actualizar algun paquete


/---------- LISTAR, BUSCAR Y DETALLES ----------/

apt list                                        lista todos los paquetes que se encuentran disponibles para descargar e instalar

apt list --upgradeable                          listar las app's que son actualizables

apt search | greep [name_paquete]               ver un paquete en especifico

apt show [name_paquete]                         ver detalles de un paquete en particular


/---------- ACTUALIZAR UBUNTU ----------/

sudo apt update                                 actualiza todos los paquetes

sudo apt dist-update                            actualiza todos los paquetes ademas del kernel, toma demasiado tiempo

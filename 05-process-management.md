/---------- INTRODUCCION ----------/

pidof gnome-todo                                    devuelve el identificador del proceso


/---------- VISUALIZACIÓN DE PROCESOS ----------/

man ps                                              manual del comando "ps"

ps                                                  muestra solo lo procesos que se estan ejecutando del usuario actual

ps aux                                              muestra todo los procesos de todos los usuarios que se estan ejecutando


/---------- PROCESOS EN TIEMPO REAL ----------/

top                                                 visualiza un detalle de los procesos em ejecucion actual


/---------- PROCESOS EN SEGUNDO PLANO ----------/

gnome-todo &                                        ejecutamos una aplicacion y con "&" la mandamos en segundo plano, pero sigue usando la terminal

jobs                                                nos indica el nombre de la aplicacion que esta ejecutansose, su estado y un numeró importante entre llaves

fg %1                                               mandamos a la aplicación enprimer grado con el numero importante (codigo)

bg %1                                               se ejecuta en segundo plano, pero nos deja la terminal libre


/---------- INTERRUPCIÓN DE PROCESOS ----------/

kill -20 40772                                      enviar señal a una aplicacion por su id para que se detenga con "-20"

kill -08 40772                                      reanudo el proceso de la app con "-18"

killall firefox                                     detener todos los procesos que esten asociados al una app en particular


/---------- PROCESOS INIT ----------/

ps aux                                              muestra un listado de procesos donde el primero es "/sbin/init", que es padre de todos los procesos


/---------- NIVELES DE INIT ----------/

init 0                                              no se encuentra ningun demonio en ejecucion (servicio), la maquina se apaga

init 1                                              lo unico que existe en el SO es una unica sesion del usuario root, no hay acceso a internet, no hay GUI, y no se puede iniciar sesión con más usuarios

init 2                                              para multiusuario, no hay acceso a internet, no hay GUI

init 3                                              se activan las redes

init 4                                              configurable, tu decides cuales son los demonios que se pueden ejecutar

init 5                                              se activa la GUI

init 6                                              sirve para poder reiniciar el sistema


/---------- APAGADO Y REINICIO DEL SISTEMA ----------/

halt                                                apagar todos los procesos de manera abrupta, al reiniciar carga los procesos que los detuvimos de manera abrupta

poweroff                                            apaga la maquina inmediatamente

reboot                                              reinicia la maquina


/---------- PRIORIDAD DE PROCESOS ----------/

Note:
* Mientras mas baja es la prioridad, más recursos le va a asignar el sistema
* Los procesos van del -100 al 39, en total 140
* Los procesos del -100 al -1 son especificos para el sistema
* Los procesos del 0 al 39 son especificos para el usuario
* Los procesos NICE son aquellos que seden recursos a otro proceso si lo requiere, estos van del -20 al 19

nice -n 10 gnome-todo                               hacer que el proceso seda recuersos a otro proceso q no sea tan nice

sudo nice -n -10 gnome-todo                         para restarle y ser más prioritario, requiere permisos

sudo renice -n -29 -p 9540                          hacerlo más nice pero mientras que la app este ya ejecutandose


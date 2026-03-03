# /---------- STRINGS ----------/

uno="Hola"
dos="Mundo"
echo $uno $dos

comentario="/* comienzo de un comentario"
echo "$comentario"

#concatenacion
tres=$uno
tres+=$dos

echo "$tres"

stringlargo="Esto es una cadena de texto larga"
echo "${stringlargo} ${#stringlargo}"

#substrings
echo "${stringlargo:8}" #desde el caracter 8 hasta el final
echo "${stringlargo:5:6}" #desde el caracter 5, toma 6 caracteres
echo "${stringlargo::7}" #toma los primeros 7 caracteres

#ultimos caracteres
echo "${stringlargo:(-5)}" #toma los ultimos 5 caracteres

#eliminar caracteres
echo "${stringlargo%???}" #elimina los ultimos 3 caracteres
echo "${stringlargo#?????}" #elimina los primeros 5 caracteres 

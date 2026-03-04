
# and - todo tiene que ser true
if [ 4 -gt 2 -a 1 -lt 3 ]; then
    echo "todo lo anterior es true"
fi

if [[ 4 -gt 2 && 1 -lt 3 ]]; then
    echo "todo true dentro del doble corchete"
fi

if [ 1 -gt 2 -o 0 -lt 2]; then
    echo "al menos uno es true"
fi

if [[ 1 -gt 2 || 0 -lt 2 ]]; then
    echo "al menos uno es true en doble corchete"
fi

if [ ! 1 -gt 2 ]; then
    echo "1 no es mayor que 2"
fi

if [[ ! 1 -gt 2 ]]; then
    echo "negacion con doble corchete"
fi
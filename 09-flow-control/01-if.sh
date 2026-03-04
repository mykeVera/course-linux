
miFuncion() {
    return 1
}

if miFuncion; then
    echo "mi funcion devolvio true"
elif false; then
    echo "estoy en el primer elif"
else
    echo "estoy en el else"
fi
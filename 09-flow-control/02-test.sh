

# Mayor que: -gt
# Menor que: -lt
# Igual a: -eq
# Mayor o igual que: -ge
# Menor o igual que: -le
# Diferente de: -ne

if [ 1 -lt 2 ]; then
  echo "el if es verdadero"
elif [ 2 -eq 2 ]; then
  echo "los numeros son iguales"
elif [ 2 -ge 2 ]; then
  echo "los numeros son iguales"
elif [ 2 -le 2 ]; then
  echo "los numeros son iguales"
fi

# si archivo existe
if [ -e "01-if.sh" ]; then
  echo "el archivo existe"
fi

# si existe y es un directorio
if [ -d ~/ ]; then
  echo "es un directorio"
fi

# mas nuevo que
if [ "02-test.sh" -nt "01-if.sh" ]; then
  echo "02-test.sh es mas nuevo que 01-if.sh"
fi

# mas viejo que
if [ "01-if.sh" -ot "02-test.sh" ]; then
  echo "01-if.sh es mas viejo que 02-test.sh"
fi
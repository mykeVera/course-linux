
for ((i=0; i<10; i++)); do
  echo "Iteration $i"
done

for ((i=0; i<10; i=i+2)); do
  echo "Iteration de 2 en 2 $i"
done

for numero in 1 2 3 4 5; do
  echo "Numero: $numero"
done

for numero in {A..Z}; do
  echo "Numero: $numero -"
done


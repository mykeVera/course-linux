
clear

read -p "Que quieres mover de ~/Downloads? (1 - Imagenes, 2 - Videos): " respuesta

case "$respuesta" in
    1) for archivo in $(ls ~/Downloads/ | grep -E "[[:alnum:]]+\.(png|jpg)"); do
            mv ~/Downloads/$archivo ~/Pictures
        done
        ;;
    2) for archivo in $(ls ~/Downloads/ | grep -E "[[:alnum:]]+\.(mp4|mkv)"); do
            mv ~/Downloads/$archivo ~/Videos
        done
        ;;
    *) echo "Opción no válida. No se moverá ningún archivo."
esac

read -p "Presiona una tecla para continuar" _
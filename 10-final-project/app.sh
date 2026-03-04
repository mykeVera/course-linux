
while true; do
    clear
    if [[ $REPLY < 1 || $REPLY > 4 && ! $REPLY != "" ]]; then
        echo "Opción no válida. Intenta de nuevo."
    fi

cat << EOF

Ingresa una opción:

1. Abrir aplicaciones de trabajo (VSCode, Firefox, Terminal, etc).
2. Mover archivos del directorio Downloads donde corresponda.
3. Iniciar un pomodoro
4. Salir

EOF

    read -p "Ingresa una opción (1-4): "

    case "$REPLY" in
        1) gnone-todo > /dev/null 2>&1 &
            firefox > /dev/null 2>&1 &
            ;;
        2) . ./mover.sh
            ;;
        3) . ./pomodoro.sh
            ;;
        4) exit 0
            ;;
        *) echo "Opción no válida. Intenta de nuevo."
            ;;
    esac

done
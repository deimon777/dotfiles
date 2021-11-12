# Muestra el menu general
_menu(){
  clear
  echo "------------------------------------"
  echo " MENU"
  echo "------------------------------------"
  echo "Selecciona una opcion:"
  echo "1) NVIDIA"
  echo "2) FFmpeg"
  echo "3) Docker"
  echo ""
  echo "9) Salir"
  echo ""
  echo -n "Indica una opcion: "
}

# Muestra la opcion seleccionada del menu
_mostrarResultado(){
  clear
  echo ""
  echo "------------------------------------"
  echo "Has seleccionado la opcion $1"
  echo "------------------------------------"
  echo ""
}

# opcion por defecto
opc="0"

# bucle mientas la opcion indicada sea diferente de 9 (salir)
until [ "$opc" -eq "9" ];
do
  case $opc in
    1)
    clear;
    _mostrarResultado $opc;
    sh /home/deimon/.deimonScripts/nvidia.sh
    _menu;;
    2)
    clear;
    _mostrarResultado $opc;
    sh /home/deimon/.deimonScripts/ffmpeg.sh
    _menu;;
    3)
    clear;
    _mostrarResultado $opc;
    _menu;;
    4)
    clear;
    _mostrarResultado $opc;
    ls;
    _menu;;
    5)
    clear;
    _mostrarResultado $opc;
    pwd;
    _menu;;

    *)
    # Esta opcion se ejecuta si no es ninguna de las anteriores
    clear;
    _menu;;
  esac
  read opc
done

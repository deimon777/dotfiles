# Muestra el menu general
_menu(){
  clear
  echo "------------------------------------"
  echo ""
  echo "------------------------------------"
  echo "Selecciona una opcion:"
  echo "1) Reinstalar Driver"
  echo "2) Compilar"
  echo "3) Bajar con YAY"
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
var = '/usr/bin/'

# bucle mientas la opcion indicada sea diferente de 9 (salir)
until [ "$opc" -eq "9" ];
do
  case $opc in
    1)
    clear;
    _mostrarResultado $opc;
        ${VAR}cd
        mkdir a
        sudo mount /dev/sdb1 ./a
        cd a/Instaladores/Linux/Nvidia/340xx/
        ${VAR}ls -a
        read -p "Version del driver: " version;
        cd 340.108-$version/
        sudo pacman -U nvidia-340xx-340.108-$version-x86_64.pkg.tar.xz
    _menu;;
    2)
    clear;
    _mostrarResultado $opc;
        ${VAR}cd
        mkdir a
        sudo mount /dev/sdb1 ./a
        cd a/Instaladores/Linux/Nvidia/340xx/
        ${VAR}ls -a
        read -p "Version del driver: " version;
        cd 340.108-$version/
        echo "Descomprimiendo TAR.GZ"
        ${VAR}tar -xzvf ./nvidia-340xx.tar.gz
        echo "Copiando NVIDIA-Linux-....."
        ${VAR}cp /home/deimon/a/Instaladores/Linux/Nvidia/340xx/340.108-$version/NVIDIA-Linux-x86_64-340.108-no-compat32 /home/deimon/a/Instaladores/Linux/Nvidia/340xx/340.108-$version/nvidia-340xx/NVIDIA-Linux-x86_64-340.108-no-compat32
        cd ./nvidia-340xx
        echo "Comenzando a compilar"
        ${VAR}makepkg
        ${VAR}cp /home/deimon/a/Instaladores/Linux/Nvidia/340xx/340.108-$version/nvidia-340xx/nvidia-340xx-340.108-19-x86_64.pkg.tar.xz /home/deimon/a/Instaladores/Linux/Nvidia/340xx/340.108-$version/nvidia-340xx-340.108-19-x86_64.pkg.tar.xz
    _menu;;
    3)
    clear;
    _mostrarResultado $opc;
    _menu;;
    9)
    clear;
    _mostrarResultado $opc;
    exit;;
    *)
    # Esta opcion se ejecuta si no es ninguna de las anteriores
    clear;
    _menu;;
  esac
  read opc
done

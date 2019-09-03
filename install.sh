#!/bin/bash
clear
echo "
███╗   ███╗ █████╗ ███╗   ██╗██╗███████╗███████╗ ██████╗
████╗ ████║██╔══██╗████╗  ██║██║██╔════╝██╔════╝██╔═══██╗
██╔████╔██║███████║██╔██╗ ██║██║███████╗███████╗██║   ██║
██║╚██╔╝██║██╔══██║██║╚██╗██║██║╚════██║╚════██║██║   ██║
██║ ╚═╝ ██║██║  ██║██║ ╚████║██║███████║███████║╚██████╔╝
╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚══════╝ ╚═════╝ 
▀▀█▀▀ █▀▀█ █▀▀█ █   █▀▀ ~ Tools Instaler By Ⓜ Ⓐ Ⓝ Ⓘ Ⓢ Ⓢ Ⓞ  ☪ ~
  █   █  █ █  █ █   ▀▀█ 
  ▀   ▀▀▀▀ ▀▀▀▀ ▀▀▀ ▀▀▀             
                                                ";
#----colors----#
red='\033[1;31m'
green='\033[1;32m'
blue='\033[1;36m'
yellow='\033[1;33m'

PREFIX='/data/data/com.termux/files'
dir='/data/data/com.termux/files/usr/share/doc/Crips/'

if [ -d "$dir" ];
then
    echo -e "${blue}[◉] A directory Crips was found! Do you want to replace it? [Y/n]:"
    read usr
    if [ $usr == "Y" ];
    then
      rm -rf "$dir"
    else
        exit
    fi
fi

echo "[✔] Installing ...";
echo "";
git clone https://github.com/tonmoy-islam/Crips.git $dir;
cd $dir
echo "#!/bin/bash/ python $PREFIX/usr/share/doc/Crips/crips.py" > crips;
chmod +x crips;
cp crips $PREFIX/usr/bin/;
rm crips;


if [ -d "$PREFIX/usr/share/doc/Crips" ] ;
   then
      echo "";
      echo "[✔]Tool istalled with success![✔]";
      echo "";
      echo "[✔]====================================================================[✔]";
      echo "[✔] ✔✔✔  All is done!! You can execute tool by typing crips  !     ✔✔✔ [✔]"; 
      echo "[✔]====================================================================[✔]";
      echo "";
else
  echo "[✘] Installation failed![✘] ";
  exit
fi

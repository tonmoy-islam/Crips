#!/bin/bash
#    ______              _      _           _______                   
#   |  ____|            (_)    | |         |__   __|                  
#   | |__ ___  ___   ___ _  ___| |_ _   _     | | ___  __ _ _ __ ___  
#   |  __/ __|/ _ \ / __| |/ _ \ __| | | |    | |/ _ \/ _` | '_ ` _ \ 
#   | |  \__ \ (_) | (__| |  __/ |_| |_| |    | |  __/ (_| | | | | | |
#   |_|  |___/\___/ \___|_|\___|\__|\__, |    |_|\___|\__,_|_| |_| |_|
#                                    __/ |                            
#                                   |___/           
#
#Greet's To
#IcoDz - Canejo
#Tool For Hacking
#Authors : Manisso

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

echo -e "${yellow}[*]Updating Process Started..."
sleep 2s
clear

echo -e "${yellow}[◉] ${blue}Cloning directory from github..."
sleep 1s
git clone https://github.com/tonmoy-islam/Crips.git $dir
clear

echo -e "${yellow}[•]Update Installing..."
echo ""
sleep 1s
cd $dir
chmod +x install.sh
./install.sh

if [ -d "$dir" ];
then
    echo "";
    echo -e "${green}[✔]Tool istalled with success![✔]";
    echo "";
else
    echo -e "${red}[✘] Installation failed! [✘]";
    exit
fi

#!/bin/bash

######################################
# Install my favorite fonts
######################################

if [ "$USER" != "root" ]; then
    echo "Current user not root!"
    exit 1
fi

if [ -f /usr/bin/apt ]; then
    apt update -y
    apt install -y fonts-cascadia-code
    apt install -y fonts-firacode
    apt install -y fonts-jetbrains-mono
    exit 0
fi

fontsDir="/usr/share/fonts"
customFontDir="$fontsDir/truetype/custom"

if [ -d $fontsDir/truetype ]; then
    mkdir -p $customFontDir
    cp -a *.ttf $customFontDir
    cd /usr/share/fonts && mkfontscale
    mkfontdir && fc-cache -fv
fi

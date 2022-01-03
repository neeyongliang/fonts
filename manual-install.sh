#!/bin/sh

fontsDir="/usr/share/fonts"
customFontDir="$fontsDir/truetype/custom"

if [ -d $fontsDir/truetype ]; then
    sudo mkdir -p $customFontDir
    sudo cp *.ttf $customFontDir
    cd /usr/share/fonts || exit
    sudo mkfontscale
    sudo mkfontdir
    sudo fc-cache -fv
fi

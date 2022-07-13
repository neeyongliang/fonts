#!/bin/sh

# Author:      neeyongliang
# Description: install font by manual
# Release:     2022.07.13

fontsDir="/usr/share/fonts"
customFontDir="$fontsDir/truetype/custom"

if [ $USER != "root" ]; then
    echo "Error: please use root account"
    exit 2
fi

if [ ! -d $fontsDir/truetype ]; then
    mkdir -p $customFontDir
fi

cp *.ttf $customFontDir
mkfontscale
mkfontdir
fc-cache -fv

#!/bin/bash
echo "[-] Downloading font ${1}"
curl -fLo "${1}.zip" \
    https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/${1}.zip
unzip -d ~/.fonts ${1}.zip
fc-cache -fv
echo "Installed."
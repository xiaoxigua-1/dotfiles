#!/bin/bash

# clone repo
git clone https://github.com/alacritty/alacritty.git
cd alacritty
mkdir extra
cd exwget

latest=$(wget -O - https://api.github.com/repos/alacritty/alacritty/releases | jq '.[0]')
version=$(jq -nr "${latest}|.tag_name")
assets=$(jq -nr "${latest}|.assets")

echo "Download Alacritty version ${version}"

logo_url=$(jq -nr "${assets} | .[] | select(.name==\"Alacritty.svg\") | .browser_download_url")
desktop_url=$(jq -nr "${assets} | .[] | select(.name==\"Alacritty.desktop\") | .browser_download_url")
config_url=$(jq -nr "${assets} | .[] | select(.name==\"alacritty.yml\") | .browser_donload_url")
wget ${logo_url} ${desktop_url} ${config_url}

cd ..

# Build
cargo build --release

# Install
sudo cp target/release/alacritty /usr/local/bin
sudo cp extra/Alacritty.svg /usr/share/pixmaps/Alacritty.svg
sudo desktop-file-install extra/Alacritty.desktop
sudo update-desktop-database

# Config file
mkdir ~/.config/alacritty
cp extra/alacritty.yml ~/.config/alacritty/alacritty.yml

echo Deno

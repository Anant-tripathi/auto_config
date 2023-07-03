#!/bin/bash

garuda-update
mkdir ~/Git2
cd Git2

echo -e "\e[31mInstalling google chrome\e[0m"
git clone https://aur.archlinux.org/google-chrome.git
cd google-chrome
makepkg -sirc
echo -e "\e[32mInstalled Google Chrome successfully\e[0m"

echo -e "\e[31mInstalling Telegram Desktop\e[0m"
cd ..
pacman -S telegram-desktop
echo -e "\e[32mInstalled Telegram Desktop successfully\e[0m"

echo -e "\e[31mInstalling Gwenview for image viewing\e[0m"
pacman -S gwenview
echo -e "\e[32mInstalled Gwenview successfully\e[0m"

echo -e "\e[31mInstalling qbittorrent\e[0m"
pacman -S qbittorrent
echo -e "\e[32mInstalled qbittorrent successfully\e[0m"


echo -e "\e[31mInstalling vlc\e[0m"
pacman -S vlc
echo -e "\e[32mInstalled vlc successfully\e[0m"

echo -e "\e[31mInstalling Neovim\e[0m"

git clone https://github.com/bushblade/nvim.git ~/.config/nvim
npm install -g typescript typescript-language-server vscode-langservers-extracted vls @tailwindcss/language-server yaml-language-server @prisma/language-server emmet-ls neovim

npm i -g prettier

echo -e "\e[31mInstalling pamac package manager\e[0m"
cd pamac-aur

pamac install stylua
pacman -S autopep8
echo -e "\e[31mInstalling python-pip package manager\e[0m"
pacman -S python-pip go

pip install yamlfmt

echo -e "\e[32mInstalled and configured nvim.\e[0m"
echo "Run nvim to finish installation and configuration"

echo -e "\e[42mINSTALLATION FINISHED\e[0m"


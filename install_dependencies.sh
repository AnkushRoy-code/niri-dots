#!/bin/bash

sudo pacman -S --needed dunst fastfetch fuzzel foot waybar niri stow swaylock swaybg wallutilswl-clipboard wl-clip-persist brightnessctl ttf-jetbrains-mono-nerd papirus-icon-theme ttf-iosevka-nerd

if yay --version; then
    yay -S --needed ttf-poppins
elif paru --version; then
    paru -S --needed ttf-poppins
else
    echo "unable fo find any AUR helper, you might want to install ttf-poppins however you prefer for the dotfiles to work as expected!"
fi
    



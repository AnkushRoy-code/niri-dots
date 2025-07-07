# Ankush Roy's Niri Rice!

Welcome to my dotfiles!

Config files are provided for the following applications:

- dunst
- fastfetch
- foot
- fuzzel
- niri (obviously)
- waybar

Scripts are provided for the following actions:

- Brightness Control
- Volume Control
- PowerMenu
- Wallpaper
- Getting MPD status - for waybar

## Install Dependencies
You'd need `stow` for installing the dotfiles. If you are too lazy finding the
correct package and installing them and happen to be using arch. I have made a
install script that can help you with that - `install_dependencies.sh`

## Install Dotfiles
After you are done installing the dependencies you can run the
`install_dots.sh` to get the dots working! If you don't want any part of my
config. You must remove that dir inside dot-config before running this script!
Also I use `colemak_mod_dh` keyboard layout. If you don't use that you might
want to change the keyboard config in the `dot-config/niri/config.kdl` to
comment out the line that has `variant "colemak_dh"` Also you SHOULD CHANGE
YOUR SCREEN RESOLUTION.

## Install Wallpapers
Now you can install the wallpapers using the `install_wallpaper.sh` script.
This will pull another of my repo that has a lotta cool wallpapers that change
based on the time of the day! Ain't that cool? For it to work you need to copy
stuff to the `/usr/share/wallpapers/` dir so you need super permissions :)
don't worry I am not doing anything funny!

## Ending
After that you are done! You now should have my config running withoug any
problems! if you're facing any sort of problems please reach out to me!

Thanks to @Shibam Roy for giving me the screenshots. My lappy is old and I
think it doesn't support wayland screenshot protocol or smlt. IDK screenshot
doesn't work in my lappy but should in yours! It did in his lappy!

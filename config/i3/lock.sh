# !/bin/bash

#scrot -F desktop.png
magick ~/wallpaper/fitoria.png -blur 0x4 desktop-blur.png
magick composite -gravity center -geometry +0-15 -background none -size 128x128 /usr/share/pixmaps/archlinux-logo.svg -compose over desktop-blur.png out.png
magick composite -gravity center -geometry +0+125 -background none -font FreeSans -pointsize 48 label:"fuu-arch" -compose over out.png pan.png

#feh pan.png
i3lock -e -i pan.png

rm -f 'desktop.png' 'desktop-blur.png' 'logo.jpg' 'out.png' 'pan.png'

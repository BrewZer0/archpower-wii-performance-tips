#!/bin/sh

echo "Have you updated the repositories yet (via pacman -Syy)? Y/N"
read -r answer

case "$answer" in
    Y|y) 
        echo "Ok! Installing..."
        pacman -S xorg xf86-video-fbdev ttf-dejavu
        ;;
    N|n) 
        echo "Update the repositories, then execute this script again."
        exit 1
        ;;
    *) 
        echo "Oops"
        exit 1
        ;;
esac
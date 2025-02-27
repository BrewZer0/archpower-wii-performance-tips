#!/bin/sh
clear
echo "Suggested package installer"
echo "did you update the repositories (via pacman -Syy)? Y/N"
echo "Press any other key to exit."
read -r answer

case "$answer" in
    Y|y) 
        echo "Press Y after it prompts you."
        pacman -S jwm st mc ttf-dejavu wget feh dillo
        echo Installed Suggested
        wget https://raw.githubusercontent.com/BrewZer0/archpower-wii-performance-tips/refs/heads/main/.jwmrc
        wget https://i.ibb.co/W4HMF4qc/brewy-20250227121548.png
        mv brewy-20250227121548.png wp.png
        ;;
    N|n) 
        echo updating...
        pacman -Syy
        exit 1
        ;;
    *) 
        echo "Exiting"
        exit 1
        ;;
esac
!/bin/sh
clear
echo ***START OPTIMIZING***
echo starting to replace lines from /etc/systemd/journald.conf
echo "Storage=Volatile" >> /etc/systemd/journald.conf
echo "RuntimeMaxUse=500K" >> /etc/systemd/journald.conf
echo done!
ecbho disabling the useless services
systemctl disable --now systemd-userdbd
systemctl --user mask at-spi-dbus-bus
echo "export GTK_ALLY=none" >> .xinitrc
echo Backing up pacman.conf file
cp /etc/pacman.conf /etc/pacman.conf.bak
echo removing old Extra repo and adding Multiarch repo
sed -i '/^extra$/,/^$/d' /etc/pacman.conf
cat <<EOF >> /etc/pacman.conf

[extra-any]
Server = https://repo.wii-linux.org/arch/extra/any

[extra]
Server = https://repo.wii-linux.org/arch/extra/\$arch
EOF

echo "Done! exiting..."
reboot
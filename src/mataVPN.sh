#!/bin/sh
################################
# Autor: jpromocion (https://github.com/jpromocion/linux-j-vpn)
# License: GNU General Public License v3.0
# mataVPN.sh
#Matamos el proceso que tiene abierto la VPN de openvpn, 
################################

#pintamos el proceso
ps -A | grep openvpn

#lo matamos
sudo killall openvpn
echo Matado

#pintamos que ya no esta el proceso, esperamos un poco para asegurar la muerte
sleep 5
ps -A | grep openvpn

#Actuailizamos IP dinamica del DNS de no-ip -> Ya no... porque el vpn.sh tampoco la actualiza con la ip de la VPN, 
#asi que no es necesario refrescarla al matar la VPN con la de nuestro ISP
#./updateDNS.sh

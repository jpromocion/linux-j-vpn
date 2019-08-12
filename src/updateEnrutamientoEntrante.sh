#!/bin/bash
################################
# Autor: jpromocion (https://github.com/jpromocion/linux-j-vpn)
# License: GNU General Public License v3.0
# updateEnrutamientoEntrante.sh
#Ejecutar comandos que aseguran enrutamiento entrante sobre la IP publica y no la VPN
#A lanzar tras establecer la VPN (vpn.sh)
#Cambiar:
#	-ip del pc por la que tengas asignada -> 192.168.18.2
#	-ip del router por la que tenga asignada -> 192.168.18.1
################################

#esperamos unos segundos... para asegurar que termine el inicio de la VPN
sleep 5

#Para evitar que se añada si ya se hizo una vez anterior... y llenar las tablas de spam por la misma regla, comprobamos en los 3 comandos
#previamente, que no este ya insertados

#ip del pc
EXIST=`ip rule show from 192.168.18.2 table 128 | wc -l`
if [ $EXIST -eq 0 ]
then
    sudo ip rule add from 192.168.18.2 table 128
    echo "[J]: Ip Rule add"
else
	echo "[J]: Note -> Ip Rule already"
fi

#ip de la mascara total
EXIST=`ip route show table 128 to 192.168.0.0/24 dev enp2s0f0 | wc -l`
if [ $EXIST -eq 0 ]
then
    sudo ip route add table 128 to 192.168.0.0/24 dev enp2s0f0
    echo "[J]: Ip Route interface add"
else
	echo "[J]: Note -> Ip Route interface already"
fi

#ip del router
EXIST=`ip route show table 128 default via 192.168.18.1 | wc -l`
if [ $EXIST -eq 0 ]
then
    sudo ip route add table 128 default via 192.168.18.1
    echo "[J]: Ip Route dafault-gateway add"
else
	echo "[J]: Note -> Ip Route dafault-gateway already"
fi

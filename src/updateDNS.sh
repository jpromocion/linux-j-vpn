#!/bin/bash
################################
# Autor: jpromocion (https://github.com/jpromocion/linux-j-vpn)
# License: GNU General Public License v3.0
# updateDNS.sh
#Utilizar ddclient que lo instalamos y configuramos con nuesta cuenta de no-ip.com, y con el chequeo para obtener la nueva IP
#Se espera 30 segundos para asegurar que coja la nueva IP de la VPN y no la anterior
################################
(sleep 30 && ddclient -daemon=0 -debug -verbose -noquiet -force > launch_dd.log) &

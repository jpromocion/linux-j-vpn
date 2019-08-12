#!/bin/sh
################################
# Autor: jpromocion (https://github.com/jpromocion/linux-j-vpn)
# License: GNU General Public License v3.0
# vpn.sh
#Conectar a un servidor de VPN en segundo plano para no bloquear la sesion actual
#Varios servidors, dejar descomentada la del servidor que se quiere
#Cambiar:
#	-La ruta donde este los ovpn que utilices
#	-El ficheros de usuario/pass en cada caso
################################

######################
#VPNbook:
######################
#Finalmente no actualizamos DNS en no-ip tras conectar(updateDNS.sh)-> dado que abrimos el ssh de entrada para que siga haciendolo por la original
#Por contra si que metemos un script "updateEnrutamientoEntrante.sh" que revise las tablas del enrutamiento entrante para asegurar el funcionamiento de las conexiones en remoto

#ALEMAN
sudo openvpn --config /home/jortri/VPNServersConfig/VPNBook.com/vpnbook-de4-udp25000.ovpn --script-security 2 --auth-user-pass autorizacionVPN.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/VPNBook.com/vpnbook-de4-tcp443.ovpn --script-security 2 --auth-user-pass autorizacionVPN.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/VPNBook.com/vpnbook-de4-tcp80.ovpn --script-security 2 --auth-user-pass autorizacionVPN.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/VPNBook.com/vpnbook-de4-udp53.ovpn --script-security 2 --auth-user-pass autorizacionVPN.txt --up updateEnrutamientoEntrante.sh &

#POLONIA
#sudo openvpn --config /home/jortri/VPNServersConfig/VPNBook.com/vpnbook-pl226-tcp443.ovpn --script-security 2 --auth-user-pass autorizacionVPN.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/VPNBook.com/vpnbook-pl226-udp25000.ovpn --script-security 2 --auth-user-pass autorizacionVPN.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/VPNBook.com/vpnbook-pl226-tcp80.ovpn --script-security 2 --auth-user-pass autorizacionVPN.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/VPNBook.com/vpnbook-pl226-udp53.ovpn --script-security 2 --auth-user-pass autorizacionVPN.txt --up updateEnrutamientoEntrante.sh &

######################
#Freevpn.me
######################
#server 1 - Francia
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.me-UDP-40000.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server1.me.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.me-TCP443.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server1.me.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.me-TCP80.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server1.me.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.me-UDP-53.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server1.me.txt --up updateEnrutamientoEntrante.sh &

#server 2 - Francia
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.se-TCP443.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server2.se.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.se-TCP80.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server2.se.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.se-UDP-40000.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server2.se.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.se-UDP-53.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server2.se.txt --up updateEnrutamientoEntrante.sh &

#server 3 - Francia
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.im-TCP443.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server3.im.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.im-TCP80.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server3.im.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.im-UDP-40000.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server3.im.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.im-UDP-53.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server3.im.txt --up updateEnrutamientoEntrante.sh &

#server 4 - Francia
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.it-TCP443.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server4.it.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.it-TCP80.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server4.it.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.it-UDP-40000.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server4.it.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.it-UDP-53.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server4.it.txt --up updateEnrutamientoEntrante.sh &

#server 5 - Polonia
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.be-TCP443.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server5.be.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.be-TCP80.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server5.be.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.be-UDP-40000.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server5.be.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.be-UDP-53.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server5.be.txt --up updateEnrutamientoEntrante.sh &

#server 6 - Aleman
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.co.uk-TCP443.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server6.co.uk.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.co.uk-TCP80.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server6.co.uk.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.co.uk-UDP-40000.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server6.co.uk.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.co.uk-UDP-53.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server6.co.uk.txt --up updateEnrutamientoEntrante.sh &

#server 7 - Holanda
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.eu-TCP443.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server7.eu.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.eu-TCP80.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server7.eu.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.eu-UDP-40000.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server7.eu.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/FreeVPN_OVPN/FreeVPN.eu-UDP-53.ovpn --script-security 2 --auth-user-pass autorizacionVPNFreeVPN_Server7.eu.txt --up updateEnrutamientoEntrante.sh &


######################
#VPN Jantit
######################
#NOTA: hay monton de servidores, de monton de sitios, en la pagina te dice si admite o no torrent... y dice sus pass si esta online... no se cada cuanto resetearan

#Singapur 7
#sudo openvpn --config "/home/jortri/VPNServersConfig/VPNjantit/sg7.vpnjantit udp 1194.ovpn" --script-security 2 --auth-user-pass autorizacionVPNjantit_Singapur7.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config "/home/jortri/VPNServersConfig/VPNjantit/sg7.vpnjantit udp 53.ovpn" --script-security 2 --auth-user-pass autorizacionVPNjantit_Singapur7.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config "/home/jortri/VPNServersConfig/VPNjantit/sg7.vpnjantit tcp 8080.ovpn" --script-security 2 --auth-user-pass autorizacionVPNjantit_Singapur7.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config "/home/jortri/VPNServersConfig/VPNjantit/sg7.vpnjantit tcp 1194.ovpn" --script-security 2 --auth-user-pass autorizacionVPNjantit_Singapur7.txt --up updateEnrutamientoEntrante.sh &


######################
#VPNgate
######################
#NOTA: otro monton de servidores de un monton de paises. Con usu/pass unico a todos.
#Dicen que es menos estable estos servidores, van/vienen...

#Corea del sur -> vpn392421188.opengw.net
#sudo openvpn --config /home/jortri/VPNServersConfig/VPNgate/vpngate_vpn392421188.opengw.net_udp_1195.ovpn --script-security 2 --auth-user-pass autorizacionVPNgate.txt --up updateEnrutamientoEntrante.sh &
#sudo openvpn --config /home/jortri/VPNServersConfig/VPNgate/vpngate_vpn392421188.opengw.net_tcp_995.ovpn --script-security 2 --auth-user-pass autorizacionVPNgate.txt --up updateEnrutamientoEntrante.sh &




######################
#RealVPN
######################

##NO HE CONSEGUIDO REGISTRARME EN NINGUNA PARA CREAR CUENTA

#server 1 - Japon
#sudo openvpn --config /home/jortri/VPNServersConfig/RealVPN/JP-TCP-443.ovpn --script-security 2 --auth-user-pass ???.txt --up updateEnrutamientoEntrante.sh &



######################
#ProtonVPN
######################
#sudo openvpn --config /home/jortri/VPNServersConfig/ProtonVPN_OVPN/nl-free-02.protonvpn.com.udp1194.ovpn --script-security 2 --auth-user-pass autorizacionVPNProton.txt --up updateEnrutamientoEntrante.sh &

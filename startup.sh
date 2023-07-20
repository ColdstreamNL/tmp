modprobe pl2303
modprobe ftdi_sio
mount /jffs/ /opt/
cd /opt
curl -kLO https://raw.githubusercontent.com/Mateusz-Dera/DD-WRT-Easy-Entware-Installer/master/install.sh
sh ./install.sh
opkg install http://bin.entware.net/armv7sf-k3.2/archive/ser2net_2.10.0-2a_armv7-3.2.ipk
echo 4030:raw:0:/dev/ttyUSB0:9600 8DATABITS NONE 1STOPBIT >> 1.conf
echo 11880:UDP:0:/dev/ttyUSB0:9600 8DATABITS NONE 1STOPBIT >> 1.conf
ser2net -c /opt/1.conf &

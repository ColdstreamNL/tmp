insmod /modules/4.4.302-st4/usbserial.ko
insmod /modules/4.4.302-st4/pl2303.ko
insmod /modules/4.4.302-st4/ftdi_sio.ko
insmod /modules/4.4.302-st4/acm.ko
wget "https://github.com/ColdstreamNL/tmp/raw/master/ser2net_2.3-1_mipsel.tar.gz"
tar xzf ser2net_2.3-1_mipsel.tar.gz
cd ser2net-2.5/usr/sbin/
chmod +x ./ser2net
./ser2net -c "4030:raw:10:/dev/ttyUSB0:9600 8DATABITS NONE 1STOPBIT" &

echo "********* RUNNING 00_prepare.sh *********"
bash /root/00_prepare.sh

echo "********* RUNNING 01_create_iso.sh *********"
bash /root/01_create_iso.sh

echo "********* RUNNING 02_redfish.sh *********"
bash /root/02_install_baremetal.sh


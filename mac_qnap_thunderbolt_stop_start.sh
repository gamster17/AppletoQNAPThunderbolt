sleep 10s
ping -c1 [[169.254.X.XXX]]
if [ "$?" != "0" ];then
echo ""
echo "************************************************************"
echo "QNAP Thunderbolt is not reachable, restarting QNAP Thunderbolt Interface..."
echo "************************************************************"
echo ""
cd ~
cd Documents/mac_scripts/qnap_scripts/
ssh [[admin account]]@[[192.168.XX.XXX]] "mkdir -p /root/local_scripts"
scp qnap_thunderbolt_stop_start.sh [[admin account]]@[[192.168.XX.XXX]]:/root/local_scripts 
ssh  [[admin account]]@[[192.168.XX.XXX]]"/root/local_scripts/qnap_thunderbolt_stop_start.sh"
echo ""
echo "************************************************************"
echo "QNAP Thunderbolt interface restarted.  Ping will be attempted again"
echo "************************************************************"
echo ""
sleep 5s
ping -c1 [[169.254.X.XXX]]
else
echo ""
echo "************************************************************"
echo "QNAP Thunderbolt interface is reachable, no need to restart"
echo "************************************************************"
echo ""
fi

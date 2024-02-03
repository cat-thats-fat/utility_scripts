#Purpose: Puts wireless adapter in managed mode and then restarts Network Manager
#Version: 1.0
#Date: 02-02-2024
echo "Taking adapter offline."
ifconfig wlx347de44036ae down
echo "Putting adapter into managed mode."
iwconfig wlx347de44036ae mode managed
echo "Taking adapter online."
ifconfig wlx347de44036ae up
echo "Restarting Network Manager service."
service NetworkManager restart

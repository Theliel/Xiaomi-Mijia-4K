#### Script for Xiaomi Mijia Action Camera (Ambarella A7)####
#### BlueTooth Remote Discovery/Pairing for Third Party controllers ####
## Created by Theliel (blog@theliel.es) ##

# IMPORTANT: DONT'T USE PAIRING MENU #
# Note 1: BT will be running all the time (more batery usage) #
# Note 2: BT Controller must be in discovery mode since about 10-40sec after camera boot #


#Wait until boot is done
sleep 10
t ipc rpc clnt exec2 '/usr/local/share/script/bt_start.sh > /dev/null'
sleep 5
#Replace "AB Shutter3" for your specific BT Device Name
t ipc rpc clnt exec2 '/usr/local/share/script/bt_start_hid.sh "AB Shutter3" > /dev/null'

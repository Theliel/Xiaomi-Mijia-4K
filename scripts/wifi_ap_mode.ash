#### Script for Xiaomi Mijia Action Camera (Ambarella A7)####
#### WIFI CLIENT MODE ####
## Created by Theliel ##

# IMPORTANT: WIFI MUST BE CONFIGURED IN AUTO ON in Camera#
# Note 1: Camera will be conneced to your AP some seconds after boot #
# Note 2: Your wifi.conf must be copied to SD in /MISC/wifi.conf #
# Note 3: File must be copied and renamed to /MISC/wifi.conf #


#Wait until boot is done. 5sec is enought
sleep 5
t ipc rpc clnt exec2 'cp /tmp/SD0/MISC/wifi.conf /tmp/wifi.conf'


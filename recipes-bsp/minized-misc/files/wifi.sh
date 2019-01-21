#Add the wi-fi driver module to the kernel:
#This is not required for brcmfmac
#modprobe bcmdhd

#Overwrite the default wpa_supplicant setup with a custom one baked in:
cp -rf /usr/local/bin/wpa_supplicant.conf /etc

#Mount eMMC/SD card on Pmod
mount /dev/mmcblk1p1 /mnt
#Further, overwrite wpa_supplicant.conf if it exists on eMMC/SD card:
cp -rf /mnt/wpa_supplicant.conf /etc
#Unmount drive again:
umount /mnt

#Run wpa_supplicant for secure networking:
wpa_supplicant -Dnl80211 -iwlan0 -c/etc/wpa_supplicant.conf -B

#To disable wired Ethernet:
ifconfig eth0 down

#To add DHCP:
udhcpc -i wlan0

#To run iperf:  (2.0.5 without the "b")
#server mode:
#comment this to simplify production testing:
#iperf -s



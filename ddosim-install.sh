#!/bin/bash
# Colors
ESC_SEQ="\x1b["
COL_RESET=$ESC_SEQ"39;49;00m"
COL_RED=$ESC_SEQ"33;31m"
COL_GREEN=$ESC_SEQ"0;92m"
COL_YELLOW=$ESC_SEQ"1;93m"
COL_BLUE=$ESC_SEQ"34;01m"
COL_PURPLE=$ESC_SEQ"1;35m"
COL_CYAN=$ESC_SEQ"36;01m"
COL_WHITE=$ESC_SEQ"1;97m"
echo -e "$COL_RED Run This as Root"
echo -e Brought to you by
echo -e $COL_WHITE @oo0sn3rp0oo
sleep 5
################################################################################
echo -e $COLOR_WHITE [TINFOILSEC PRESENTS DDOSIM INSTALLER]
################################################################################### 
echo -e "$COL_GREEN This script will install DDOSIM into /opt/ $COL_RESET"
read -p "Continue y/n" -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
echo -e $COL_RESET
cd /opt
echo -e "$COL_RED" 
apt-get update

apt-get install libarchive-dev
apt-get install libpcap0.8-dev

cd /tmp

wget http://launchpadlibrarian.net/1315573/libnet0-dev_1.0.2a-7_amd64.deb
wget http://launchpadlibrarian.net/1315572/libnet0_1.0.2a-7_amd64.deb

dpkg -i libnet0_1.0.2a-7_amd64.deb
dpkg -i libnet0-dev_1.0.2a-7_amd64.deb
echo -e $COL_CYAN
rm libnet0*

cd /opt

wget https://liquidtelecom.dl.sourceforge.net/project/ddosim/ddosim-0.2.tar.gz
tar xvzf ddosim-0.2.tar.gz

cd ddosim-0.2

./configure
make
make install
$COLOR_RESET
echo -e $COL_YELLOW
sh -c ddosim

fi

exit

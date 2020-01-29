#!/bin/bash

# Init Provisioning Steps
sudo yum -y install dnf
sudo dnf -y install epel-release python3 python3-dnf wget
sudo dnf -y install dkms kernel-devel kernel-headers gcc* make bzip2 perl
sudo dnf -y update kernel-*

echo "KERNEL-BEFORE"
rpm -q kernel-devel
uname -r


ln -sf /usr/bin/python3 python
sudo alternatives --set python /usr/bin/python3
sudo pip3 install --upgrade setuptools pip

pip3 install --user ansible


sudo reboot
# rpm -q kernel-devel
# uname -r
# echo "KERNEL-AFTER"
# /sbin/rcvboxadd quicksetup all
# cd /opt
# sudo wget -c http://download.virtualbox.org/virtualbox/6.0.16/VBoxGuestAdditions_6.0.16.iso -O VBoxGuestAdditions_6.0.16.iso
# cd /opt
# sudo mount VBoxGuestAdditions_6.0.16.iso -o loop /mnt
# cd /mnt
# sudo sh VBoxLinuxAdditions.run --nox11
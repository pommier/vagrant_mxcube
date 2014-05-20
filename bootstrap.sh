#!/usr/bin/env bash
apt-get update
apt-get install -y xfce4
apt-get install python2.6 python2.6-dev
apt-get install -y python-qwt5-qt3 
apt-get install -y python-louie
sudo apt-get install -y git-core
sudo apt-get install -y python-setuptools
sudo apt-get install -y python-sip-dev
sudo apt-get install -y python-sip
sudo easy_install pip
pip install gevent
pip install jsonpickle
apt-get install -y libgsl0-dev
apt-get install -y python-qt-dev
apt-get install -y libcv-dev
git clone https://github.com/mxcube/pychooch.git
cd pychooch
sudo python ./setup.py install
cd ..
git clone https://github.com/mxcube/qub.git
cd qub
sudo python ./setup.py install
cd ..
sudo su -
sudo echo "deb http://www.edna-site.org/pub/ubuntu binary/ " >> /etc/apt/sources.list
apt-get update
apt-get install --force-yes -y python-pymca
git clone https://github.com/mxcube/mxcube.git 
cd mxcube
git clone https://github.com/mxcube/HardwareRepository.git
git clone https://github.com/mxcube/BlissFramework.git
cd ..
chown -R vagrant:vagrant /home/vagrant/mxcube 
cd mxcube
cp example_mxcube.gui mxcube.gui
cd ..
rm -rf /var/www
ln -fs /vagrant /var/www
cd /home/vagrant/
sudo apt-get install -y linux-headers-$(uname -r)
echo 'if [ "$(tty)" = "/dev/tty1" -o "$(tty)" = "/dev/vc/1" ];' >> .bashrc
echo 'then startxfce4'>> .bashrc
echo 'fi' >> .bashrc

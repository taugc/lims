## TauGC LIMS v. 1.0 - FEV 2020

###############################################################################

#fresh Ubuntu 18.04

#!/bin/bash

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get remove -y docker docker-engine docker.io
sudo apt-get -y install docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo gpasswd -a $USER docker
git clone https://github.com/senaite/senaite.docker.git
sudo docker build senaite.docker/1.3.2


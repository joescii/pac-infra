#!/bin/bash -eux

cd /usr/lib
sudo wget http://mirror.cc.columbia.edu/pub/software/apache/archiva/1.3.9/binaries/apache-archiva-1.3.9.1-bin.zip
sudo unzip apache-archiva-1.3.9.1-bin.zip
sudo cp /usr/lib/apache-archiva-1.3.9/bin/archiva /etc/init.d/archiva
sudo update-rc.d archiva defaults 80


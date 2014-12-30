#!/bin/bash -eux

cd /usr/lib
sudo wget http://mirrors.advancedhosters.com/apache/archiva/2.1.1/binaries/apache-archiva-2.1.1-bin.zip
sudo unzip apache-archiva-2.1.1-bin.zip
cd apache-archiva-2.1.1/bin
sudo ./archiva start

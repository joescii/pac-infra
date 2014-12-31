#!/bin/bash -eux

# Install Java 7
sudo apt-get install -y python-software-properties
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update

echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
sudo apt-get -y install oracle-java7-installer
update-alternatives --display java
apt-get -y install oracle-java7-set-default && apt-get clean


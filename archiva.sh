#!/bin/bash -eux

wget http://mirrors.advancedhosters.com/apache/archiva/2.1.1/binaries/apache-archiva-2.1.1-bin.zip
unzip apache-archiva-2.1.1-bin.zip
cd apache-archiva-2.1.1/bin
./archiva start

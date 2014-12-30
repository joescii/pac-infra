#!/bin/bash -eux

export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
git clone https://github.com/joescii/prose-and-conz.git
cd prose-and-conz
chmod 700 ./sbt
./sbt package

#!/bin/bash -eux

export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
git clone https://github.com/lift/framework lift-framework
cd lift-framework
git checkout joe-snapshot
chmod 700 ./sbt
./sbt publishLocal

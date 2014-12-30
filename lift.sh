#!/bin/bash -eux

export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
git clone https://github.com/lift/framework lift-framework
cd lift-framework
git checkout unified-parsers
export SBT_OPTS="-Xms64M -Xmx256M -XX:MaxPermSize=512M"
sbt publishLocal

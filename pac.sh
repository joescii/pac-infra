#!/bin/bash -eux

export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
git clone https://github.com/joescii/prose-and-conz.git
cd prose-and-conz
export SBT_OPTS="-Xms64M -Xmx256M -XX:MaxPermSize=512M"
sbt package

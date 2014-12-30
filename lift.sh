#!/bin/bash -eux

export JAVA_HOME=/usr/lib/jvm/java-8-oracle/
git clone https://github.com/lift/framework lift-framework
cd lift-framework
git checkout unified-parsers
export SBT_OPTS="-Xms64M -Xmx256M -XX:MaxPermSize=512M"
export SBT_CMD=publishLocal
export SBT_JAR=${SBT_HOME}/bin/sbt-launch.jar

${JAVA_HOME}/bin/java -ea -server ${JAVA_OPTS} ${SBT_OPTS}		\
	-XX:+AggressiveOpts             		\
	-XX:+OptimizeStringConcat			\
	-XX:+UseConcMarkSweepGC               		\
	-XX:+CMSParallelRemarkEnabled   		\
	-XX:+CMSClassUnloadingEnabled   		\
	-XX:+CMSIncrementalMode         		\
	-jar project/${sbtjar} ${SBT_CMD}

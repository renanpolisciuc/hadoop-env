#!/bin/sh

export HADOOP_HOME=/worker/hadoop
export HIVE_HOME=/worker/hive
export PATH=$HIVE_HOME/bin:$HADOOP_HOME/bin:$PATH

$HADOOP_HOME/bin/hadoop fs -mkdir -p /tmp
$HADOOP_HOME/bin/hadoop fs -mkdir -p /user/hive/warehouse
$HADOOP_HOME/bin/hadoop fs -chmod g+w /tmp
$HADOOP_HOME/bin/hadoop fs -chmod g+w /user/hive/warehouse

schematool -dbType mysql -initSchema
hive --service metastore &
hive --service hiveserver2
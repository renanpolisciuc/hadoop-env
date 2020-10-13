#!/bin/sh

export HADOOP_HOME=/hadoop
export FLUME_HOME=/flume
export PATH=$HADOOP_HOME/bin:$FLUME_HOME/bin:$PATH


flume-ng agent --conf conf --conf-file example.conf --name a1 -Dflume.root.logger=INFO,console
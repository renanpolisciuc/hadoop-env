export PATH=$PATH:$(pwd)/bin

hdfs namenode -format -force

hdfs hadoop fs -chown hadoop /

hdfs namenode
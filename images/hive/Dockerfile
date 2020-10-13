FROM openjdk:8-jdk

ENV HADOOP_VERSION=2.10.0
ENV HIVE_VERSION=2.3.7

WORKDIR /worker/hadoop

RUN wget https://downloads.apache.org/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz

RUN tar -xf hadoop-$HADOOP_VERSION.tar.gz && mv hadoop-$HADOOP_VERSION/* . && rm -rf hadoop-$HADOOP_VERSION hadoop-$HADOOP_VERSION.tar.gz

WORKDIR /worker/hive

RUN wget https://downloads.apache.org/hive/hive-$HIVE_VERSION/apache-hive-$HIVE_VERSION-bin.tar.gz

RUN tar -xf apache-hive-$HIVE_VERSION-bin.tar.gz && mv apache-hive-$HIVE_VERSION-bin/* . && rm -rf apache-hive-$HIVE_VERSION-bin apache-hive-$HIVE_VERSION-bin.tar.gz

COPY lib/*.jar ./lib/

WORKDIR /worker

ADD run.sh .

RUN chmod -R 755 run.sh

EXPOSE 10000
EXPOSE 10002

ENTRYPOINT ["sh", "-c", "./run.sh"]

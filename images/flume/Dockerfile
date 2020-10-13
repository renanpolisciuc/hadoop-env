FROM openjdk:8

RUN mkdir /hadoop && mkdir /flume

RUN useradd hadoop

RUN chown -R hadoop /hadoop && chown -R hadoop /flume

WORKDIR /hadoop

USER hadoop

ENV HADOOP_VERSION=2.10.0

RUN wget https://downloads.apache.org/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz

RUN tar -xf hadoop-$HADOOP_VERSION.tar.gz && mv hadoop-$HADOOP_VERSION/* . && rm -rf hadoop-$HADOOP_VERSION hadoop-$HADOOP_VERSION.tar.gz

WORKDIR /flume

RUN wget -O flume.tar.gz https://downloads.apache.org/flume/1.9.0/apache-flume-1.9.0-bin.tar.gz

RUN tar -xf flume.tar.gz && mv apache-flume-1.9.0-bin/* . && rm -rf flume.tar.gz apache-flume-1.9.0-bin/

COPY ./libs/*.jar lib/

ADD run.sh .

ENTRYPOINT ["sh", "-c", "./run.sh"]
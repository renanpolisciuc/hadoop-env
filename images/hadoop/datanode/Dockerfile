FROM openjdk:8-jdk

WORKDIR /hadoop

RUN useradd hadoop

RUN chown -R hadoop /hadoop

USER hadoop

ENV HADOOP_VERSION=2.10.0

RUN wget https://downloads.apache.org/hadoop/common/hadoop-$HADOOP_VERSION/hadoop-$HADOOP_VERSION.tar.gz

RUN tar -xf hadoop-$HADOOP_VERSION.tar.gz && mv hadoop-$HADOOP_VERSION/* . && rm -rf hadoop-$HADOOP_VERSION hadoop-$HADOOP_VERSION.tar.gz

COPY core-site.xml hdfs-site.xml hadoop-env.sh yarn-site.xml /hadoop/etc/hadoop/

RUN mkdir -p /hadoop/blocks && mkdir -p /hadoop/logs

ADD run.sh .

EXPOSE 50075

ENTRYPOINT ["sh", "-c", "./run.sh"]

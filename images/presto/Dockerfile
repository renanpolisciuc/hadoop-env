FROM openjdk:8-jdk

WORKDIR /presto

RUN wget https://repo1.maven.org/maven2/com/facebook/presto/presto-server/0.238.1/presto-server-0.238.1.tar.gz

RUN tar -xf presto-server-0.238.1.tar.gz && mv presto-server-0.238.1/* . && rm -rf presto-server-0.238.1*

RUN mkdir etc

COPY ./etc/* etc/

CMD ["./bin/launcher", "run"]


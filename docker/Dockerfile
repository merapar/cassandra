FROM openjdk:8-jre

RUN apt-get update && apt-get install -y python2.7 

RUN curl -L http://ftp.tudelft.nl/apache/cassandra/2.2.8/apache-cassandra-2.2.8-bin.tar.gz -o ./cassandra.tar.gz

RUN mkdir cassandra

RUN tar --strip=1 --directory=cassandra -x -f cassandra.tar.gz

COPY mx4j-tools.jar /cassandra/lib

COPY run.sh /

COPY cassandra.yaml /cassandra/conf

COPY kubernetes-cassandra.jar /cassandra/lib

ENV PATH /cassandra/bin:$PATH

CMD /run.sh

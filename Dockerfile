
FROM openjdk:8-jre

COPY run.sh /

COPY cassandra /cassandra

ENV PATH /cassandra/bin:$PATH

CMD /run.sh

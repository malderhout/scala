FROM java:8
MAINTAINER Maikel Alderhout malderhout@gmail.com
RUN apt-get update

ENV SCALA_VERSION 2.11.7

# INSTALL SCALA
RUN wget http://downloads.typesafe.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz -O /tmp/scala.tgz

# UNPACK
RUN tar xzf /tmp/scala.tgz -C /opt
RUN ln -s /opt/scala-${SCALA_VERSION} /opt/scala
RUN rm /tmp/scala.tgz

# SET PATH
ENV PATH $PATH:/opt/scala/bin

# START SCALA
CMD ["scala"]

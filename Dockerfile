FROM library/java:8-jdk
MAINTAINER Paul Wood <paul@paulwoodiii.com>
RUN apt-get update -y                  && \
    apt-get install -y wget                && \
    apt-get install -y unzip	              && \
    apt-get install supervisor build-essential  -y
RUN mkdir -p /var/log/supervisor
RUN mkdir -p /logs
ADD supervisor.conf /etc/supervisor/conf.d/supervisor.conf
RUN wget http://www.baasbox.com/download/baasbox-stable.zip
RUN unzip -o baasbox-stable.zip
RUN chmod 755 /opt/baasbox/start
EXPOSE 9000
CMD "/usr/bin/supervisord"
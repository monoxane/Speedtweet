FROM ubuntu:latest
MAINTAINER Oliver Herrmann (oliver@monoxane.com)

RUN apt-get update
RUN apt-get install python3 python3-pip -y
RUN pip3 install pyspeedtest
RUN pip3 install hurry.filesize
RUN pip3 install tweepy

ADD src/speedtweet.py /data/speedtweet.py

CMD python3 /data/speedtweet.py

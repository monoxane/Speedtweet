FROM ubuntu:latest
MAINTAINER Oliver Herrmann (oliver@monoxane.com)
RUN apt-get update && apt-get install python3 python3-pip -y && pip3 install pyspeedtest hurry.filesize tweepy
ADD src/speedtweet.py /data/speedtweet.py
CMD python3 /data/speedtweet.py

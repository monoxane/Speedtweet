FROM ubuntu:latest
MAINTAINER Oliver Herrmann (oliver@monoxane.com)

# Install crap
RUN apt-get update
RUN apt-get install python3 python3-pip netcat -y
RUN pip3 install pyspeedtest
RUN pip3 install hurry.filesize
RUN pip3 install tweepy

# Do some witchcraft to make things not break
RUN mkdir /data
RUN mkdir /data/out
ADD speedtweet.py /data/speedtweet.py

# Run the previously made shenannigans
CMD python3 /data/speedtweet.py

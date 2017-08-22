FROM ubuntu:latest
MAINTAINER Oliver Herrmann (oliver@monoxane.com)

# Install crap
RUN apt-get update
RUN apt-get install wget cron python python-pip speedtest-cli netcat -y
RUN wget -O speedtest-csv https://raw.githubusercontent.com/HenrikBengtsson/speedtest-cli-extras/master/bin/speedtest-csv
RUN chmod +x speedtest-csv
RUN mv speedtest-csv /usr/bin/

# Do some witchcraft to make things not break
RUN mkdir /data
RUN mkdir /data/out
# Crontab install arcane magic
ADD crontab /etc/cron.d/simple-cron
ADD bootstrap.sh /data/bootstrap.sh
ADD httpd.sh /data/httpd.sh
RUN chmod +x /data/httpd.sh
RUN chmod +x /data/bootstrap.sh
RUN chmod 0644 /etc/cron.d/simple-cron
RUN touch /var/log/cron.log

# Run the previously made shenannigans
CMD /data/bootstrap.sh
EXPOSE 8080

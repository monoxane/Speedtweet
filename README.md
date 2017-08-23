Docker speedtest monitor
==
(Very much a work in progress right now)

Ever wanted a simple way to monitor your upload and download? Here you go!

Install
--

To run simply clone the repo then build the image with  ```sudo docker build -t speedtweet:latest .```  

zand run with ```docker run -it -e SPEEDTWEET_ISP_TWITTER="@<isp>" -e SPEEDTWEET_SPEED_ADVERTISED="<speed in mbps>" speedtweet```

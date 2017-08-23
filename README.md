Docker ISP tweeter
==
(Very much a work in progress right now)

Automatically runs a speedtest every 30 min and if its below a set speed it will tweet your ISP with numbers 'n' stuff

Install
--

To run simply clone the repo then build the image with  ```sudo docker build -t speedtweet:latest .```  

and run with
```
docker run -it
\ -e SPEEDTWEET_ISP_TWITTER="@<isp twitter>"
\ -e SPEEDTWEET_SPEED_ADVERTISED="<isp advertised speed>"
\ -e SPEEDTWEET_SPEED_THRESHOLD="<threshold for tweeting>"
\ -e SPEEDTWEET_TWITTER_ACCESS_TOKEN="<twitter access token>"
\ -e SPEEDTWEET_TWITTER_ACCESS_SECRET="<twitter access token secret>"
\ -e SPEEDTWEET_TWITTER_CONSUMER_KEY="<twitter consumer key>"
\ -e SPEEDTWEET_TWITTER_CONSUMER_SECRET="<twitter consumer secret>"
\ speedtest
```

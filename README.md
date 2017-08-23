Docker speedtest ISP tweeter
==
(Very much a work in progress right now)

Runs a speedtest every 15 minutes and if the result is below the threshold (SPEEDTWEET_SPEED_THRESHOLD) it will trigger a tweet to the username set in SPEEDTWEET_ISP_TWITTER (probably your ISP) that looks like "Hey @ISP, Why am I only getting 15.45mbps download when I pay for 30mbps?"

Install
--
To run from dev: Clone this repo then build the docker image with  ```sudo docker build -t speedtweet:latest .```  then continue to step 1.

To run normally:
1. Get a twitter API key and stuff by following steps one and two of [this guide by DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-create-a-twitter-app) and

2. Run with:
```
docker run -it
\ -e SPEEDTWEET_ISP_TWITTER="@<isp twitter>"
\ -e SPEEDTWEET_SPEED_ADVERTISED="<isp advertised speed>"
\ -e SPEEDTWEET_SPEED_THRESHOLD="<threshold for tweeting>"
\ -e SPEEDTWEET_TWITTER_ACCESS_TOKEN="<twitter access token>"
\ -e SPEEDTWEET_TWITTER_ACCESS_SECRET="<twitter access token secret>"
\ -e SPEEDTWEET_TWITTER_CONSUMER_KEY="<twitter consumer key>"
\ -e SPEEDTWEET_TWITTER_CONSUMER_SECRET="<twitter consumer secret>"
\ monoxane/speedtweet:latest
```

Docker speedtest ISP tweeter
==
(Very much a work in progress right now)

Runs a speedtest every 15 minutes and if the result is below the threshold (SPEEDTWEET_SPEED_THRESHOLD) it will trigger a tweet to the username set in SPEEDTWEET_ISP_TWITTER (probably your ISP) that looks like "Hey @ISP, Why am I only getting 15.45mbps download when I pay for 30mbps?"

Install
--
1. Clone this repo

2. Build the docker image with  ```sudo docker build -t speedtweet:latest .```  

3. Get a twitter API key and stuff by following steps one and two of [this guide by DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-create-a-twitter-app) and

4. Run with:
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

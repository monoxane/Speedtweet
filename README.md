Speedtest ISP tweeter
==
(Very much a work in progress right now)

Runs a speedtest every 15 minutes and if the result is below the threshold (SPEEDTWEET_SPEED_THRESHOLD) it will trigger a tweet to the username set in SPEEDTWEET_ISP_TWITTER (probably your ISP) that looks like "Hey @ISP, Why am I only getting 15.45mbps download when I pay for 30mbps?"

# Run with docker
1. Clone this repo then build the docker image with  ```docker build -t monoxane/speedtweet:latest .```
3. Get a twitter API key and stuff by following steps one and two of [this guide by DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-create-a-twitter-app) and
2. Run with:
```
docker run -d
\ -e SPEEDTWEET_ISP_TWITTER="@<isp twitter>"
\ -e SPEEDTWEET_SPEED_ADVERTISED="<isp advertised speed>"
\ -e SPEEDTWEET_SPEED_THRESHOLD="<threshold for tweeting>"
\ -e SPEEDTWEET_TWITTER_ACCESS_TOKEN="<twitter access token>"
\ -e SPEEDTWEET_TWITTER_ACCESS_SECRET="<twitter access token secret>"
\ -e SPEEDTWEET_TWITTER_CONSUMER_KEY="<twitter consumer key>"
\ -e SPEEDTWEET_TWITTER_CONSUMER_SECRET="<twitter consumer secret>"
\ monoxane/speedtweet:latest
```

# Run with python3
1. Clone the repo
2. Install python3 and python3-pip with your package manager
3. run ```pip3 install pyspeedtest hurry.filesize tweepy``` to get the dependancies
4. run all of these (replacing with your personal things of course)
```
export SPEEDTWEET_ISP_TWITTER="@<isp twitter>"
export SPEEDTWEET_SPEED_ADVERTISED="<isp advertised speed>"
export SPEEDTWEET_SPEED_THRESHOLD="<threshold for tweeting>"
export SPEEDTWEET_TWITTER_ACCESS_TOKEN="<twitter access token>"
export SPEEDTWEET_TWITTER_ACCESS_SECRET="<twitter access token secret>"
export SPEEDTWEET_TWITTER_CONSUMER_KEY="<twitter consumer key>"
export SPEEDTWEET_TWITTER_CONSUMER_SECRET="<twitter consumer secret>"
```
5. Run it with `python3 speedtweet.py`
## Run in the background with python3
You probably want to run it in background, you can use `screen` or `nohup` for this  

  6.1 For screen, install it with your package manager, its usually just `screen` but might be `gnuscreen` for some reason then run `screen -S speedtweet`, `python3 speedtweet.py` then hit `ctrl+a`  then `d` to detatch the screen.

  6.2 For nohup just run `nohup python speedtweet.py &`, the console output will be in nohup.out

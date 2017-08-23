import pyspeedtest
import os
from hurry.filesize import size, si, iec
import tweepy
import time

consumer_key = os.environ.get('SPEEDTWEET_TWITTER_CONSUMER_KEY')
consumer_secret = os.environ.get('SPEEDTWEET_TWITTER_CONSUMER_SECRET')
access_token = os.environ.get('SPEEDTWEET_TWITTER_ACCESS_TOKEN')
access_token_secret = os.environ.get('SPEEDTWEET_TWITTER_ACCESS_SECRET')

isp_twitter = str(os.environ.get('SPEEDTWEET_ISP_TWITTER'))
isp_advertised = str(os.environ.get('SPEEDTWEET_SPEED_ADVERTISED'))
isp_advertised_threshold = str(os.environ.get('SPEEDTWEET_SPEED_THRESHOLD'))

twitter_auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
twitter_auth.set_access_token(access_token, access_token_secret)
api = tweepy.API(twitter_auth)

st = pyspeedtest.SpeedTest()

while True:
    current_speed = '%.2f' % float(st.download()/1000/1000)
    print("Current Speed: " + current_speed)
    if current_speed < isp_advertised_threshold:
        tweet = ("Hey " + isp_twitter + ", Why am I only getting " + current_speed + "mbps download when I pay for " + isp_advertised + "mbps?")
        print("Speed is below threshold, tweeting: " + tweet)
        api.update_status(status=tweet)

    time.sleep(900)

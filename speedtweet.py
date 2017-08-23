import pyspeedtest
import os
from hurry.filesize import size, si, iec

isp_twitter = str(os.environ.get('SPEEDTWEET_ISP_TWITTER'))
isp_advertised = str(os.environ.get('SPEEDTWEET_SPEED_ADVERTISED'))
isp_advertised_postfix = str(os.environ.get('SPEEDTWEET_SPEED_ADVERTISED_POSTFIX'))

st = pyspeedtest.SpeedTest()
#current_speed = str(size(st.download(), system=si))
current_speed = '%.2f' % float(st.download()/1000/1000)
print("Hey " + isp_twitter + ", Why am I only getting ~" + current_speed + "mbps download when I pay for " + isp_advertised + "mbps?")

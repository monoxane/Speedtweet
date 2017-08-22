Docker speedtest monitor
==
(Very much a work in progress right now)
Ever wanted a simple way to monitor your upload and download? Here you go!

To run simply clone the repo then build the image with  ```sudo docker build -t speedtest:latest .``` and run with ```docker run -it -p 8080:8080 -v /path/to/docker-speedtest-graph/out:/data/out speedtest```

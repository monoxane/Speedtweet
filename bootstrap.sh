rm /data/out/speedtest.csv
speedtest-csv --sep ';' --header >> /data/out/speedtest.csv
speedtest-csv --sep ';' >> /data/out/speedtest.csv
cd /data && netcat -lp 8080 -e /./data/httpd.sh & cron && tail -f /var/log/cron.log

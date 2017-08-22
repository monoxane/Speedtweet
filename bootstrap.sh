rm /data/out/speedtest.csv
speedtest-csv --header >> /data/out/speedtest.csv
speedtest-csv --sep ';' >> /data/out/speedtest.csv
cd /data && netcat -lp 8080 -e /./data/bashttpd & cron && tail -f /var/log/cron.log

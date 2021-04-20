# telegraf &
# influxd run -config /etc/influxdb.conf

# Start telegraf
/usr/bin/telegraf &

# Start influxdb
/usr/sbin/influxd & sleep 3

# Initialize database
influx -execute "CREATE DATABASE influx"
influx -execute "CREATE USER admin WITH PASSWORD 'admin'"
influx -execute "GRANT ALL ON influx TO admin"

# Keep container running
tail -f /dev/null
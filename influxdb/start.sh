# telegraf &
# influxd run -config /etc/influxdb.conf

# Start telegraf
# /usr/bin/telegraf --config /etc/telegraf/telegraf.conf &

# Start influxdb
# /usr/sbin/influxd & sleep 3
/usr/sbin/influxd

# Initialize database
influx -execute "CREATE DATABASE telegraf"
influx -execute "CREATE USER dchani WITH PASSWORD 'dchani'"
influx -execute "GRANT ALL ON influx TO dchani"

# influx -execute "CREATE DATABASE grafana"
# influx -execute "CREATE USER admin WITH PASSWORD 'admin'"
# influx -execute "GRANT ALL ON influx TO admin"

# Keep container running
tail -f /dev/null
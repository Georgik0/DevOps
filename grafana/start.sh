# Start telegraf
/usr/bin/telegraf &

# Start Grafana
/usr/sbin/grafana-server --homepath=/usr/share/grafana

# telegraf &
# /usr/sbin/grafana-server --homepath=/usr/share/grafana
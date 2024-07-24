# REF: https://medium.com/@neupaneakrur11/configuring-promtail-and-loki-for-log-aggregation-with-nginx-logs-96fc3577e063

cd /tmp

wget https://github.com/grafana/loki/releases/download/v2.9.9/loki-linux-amd64.zip


unzip loki-linux-amd64.zip

cd loki-linux-amd64


sudo cp loki-linux-amd64 /usr/local/bin/loki

sudo mkdir -p /etc/loki/

sudo nano /etc/loki/local-config.yaml




sudo nano /etc/systemd/system/loki.service


sudo systemctl start loki

sudo systemctl enable loki





http://localhost:3100/ready
http://localhost:3100/metrics
### https://prometheus.io/download/#node_exporter


wget https://github.com/prometheus/node_exporter/releases/download/v1.8.2/node_exporter-1.8.2.linux-amd64.tar.gz

tar -xvf node_exporter-1.8.2.linux-amd64.tar.gz

cd node_exporter-1.8.2.linux-amd64

sudo cp node_exporter /usr/local/bin

sudo useradd --no-create-home --shell /bin/false node_exporter



sudo nano /etc/systemd/system/node_exporter.service

#### node_exporter.service


[Unit]
Description=Node Exporter
Wants=network-online.target
After=network-online.target

[Service]
User=node_exporter
Group=node_exporter
Type=simple
ExecStart=/usr/local/bin/node_exporter
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target





#### node_exporter start , enable

sudo systemctl daemon-reload

sudo systemctl start node_exporter

sudo systemctl enable node_exporter

sudo systemctl status node_exporter

curl -i http://localhost:9100/metrics
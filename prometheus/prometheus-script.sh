sudo useradd --no-create-home --shell /bin/false prometheus

sudo mkdir /etc/prometheus
sudo mkdir /var/lib/prometheus

sudo chown prometheus:prometheus /var/lib/prometheus
cd /tmp

wget https://github.com/prometheus/prometheus/releases/download/v2.53.1/prometheus-2.53.1.linux-amd64.tar.gz

tar -xvf prometheus-2.53.1.linux-amd64.tar.gz
cd prometheus-2.53.1.linux-amd64

sudo cp -r console* /etc/prometheus

sudo cp prometheus.yml /etc/prometheus

sudo chown -R prometheus:prometheus /etc/prometheus

sudo cp prometheus promtool /usr/local/bin/

sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool

cat /etc/prometheus/prometheus.yml

sudo chown -R prometheus:prometheus /etc/prometheus/consoles
sudo chown -R prometheus:prometheus /etc/prometheus/console_libraries
sudo chown -R prometheus:prometheus /etc/prometheus/prometheus.yml




cd /home/ubuntu/kibana/

sudo cp ./services/prometheus.service /etc/systemd/system/prometheus.service


cat /etc/systemd/system/prometheus.service

# Start, Enable, Status Prometheus service

sudo systemctl daemon-reload

sudo systemctl start prometheus

sudo systemctl enable prometheus

sudo systemctl status prometheus



curl -i 
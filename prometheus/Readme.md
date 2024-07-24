## https://prometheus.io/download/



### https://www.cherryservers.com/blog/install-prometheus-ubuntu


wget https://github.com/prometheus/prometheus/releases/download/v2.53.1/prometheus-2.53.1.linux-amd64.tar.gz

tar zxvf prometheus-2.53.1.linux-amd64

cd prometheus-2.53.1.linux-amd64


sudo mv prometheus /usr/local/bin
sudo mv promtool /usr/local/bin

sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool

sudo mkdir -p /etc/prometheus

sudo mv consoles /etc/prometheus
sudo mv console_libraries /etc/prometheus
sudo mv prometheus.yml /etc/prometheus



sudo chown prometheus:prometheus /etc/prometheus
sudo chown -R prometheus:prometheus /etc/prometheus/consoles
sudo chown -R prometheus:prometheus /etc/prometheus/console_libraries
sudo chown -R prometheus:prometheus /var/lib/prometheus




sudo nano /etc/systemd/system/prometheus.service

sudo systemctl daemon-reload

sudo systemctl enable prometheus

sudo systemctl start prometheus

sudo systemctl status prometheus



curl -i localhost:9090
curl -i localhost:9090/graph

http://localhost:9090/alerts


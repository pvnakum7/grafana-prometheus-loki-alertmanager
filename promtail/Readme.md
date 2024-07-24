!#/bin/bash

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository 'deb https://packages.grafana.com/loki/deb stable main'

sudo apt-get update
sudo apt-get install -y promtail

sudo mkdir -p /etc/promtail

sudo cp ./promtail-config.yml /etc/promtail/config.yml

sudo useradd --system promtail

sudo usermod -aG syslog promtail

sudo usermod -aG adm promtail

##  sing manually install

#cd /tmp
#wget https://github.com/grafana/loki/releases/download/v2.4.1/promtail-linux-amd64.zip

## this require for the access the log from nginx , php , java where permission issue

#cd promtail-linux-amd64

#sudo cp -r promtail-linux-amd64 /usr/bin/promtail

#sudo cp -r promtail-linux-amd64 /usr/local/bin/promtail

sudo mkdir -p /etc/promtail/

sudo cp ./promtail-config.yml /etc/promtail/config.yml

sudo cp promtail.service /etc/systemd/system/promtail.service

sudo usermod -aG syslog promtail

sudo usermod -aG adm promtail

sudo systemctl start promtail

sudo systemctl enable promtail

sudo systemctl status promtail
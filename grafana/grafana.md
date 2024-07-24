# https://ibrahims.medium.com/how-to-install-prometheus-and-grafana-on-ubuntu-22-04-lts-configure-grafana-dashboard-5d11e3cb3cfd


sudo apt install -y apt-transport-https
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee /etc/apt/sources.list.d/grafana.list

sudo apt-get update
sudo apt-get install grafana -y

sudo systemctl enable --now grafana-server

sudo systemctl stop grafana-server

### echo chnage the new password
sudo grafana-cli admin reset-admin-password new_password

# sudo grafana-cli admin reset-admin-password AppGra7pen
sudo systemctl start grafana-server



journalctl -u grafana-server.service -f
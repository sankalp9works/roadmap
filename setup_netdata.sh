echo "Updating a system"
sudo apt  update && sudo apt  upgrade --y 

echo "updating and installing wget"
sudo  apt  install wget -y

echo "installing netdata kickstart file with wget"
wget -O /tmp/netdata-kickstart.sh https://get.netdata.cloud/kickstart.sh && sh /tmp/netdata-kickstart.sh --no-updates

echo "Configuring CPU alert threshold..."
sudo sed -i 's/> 75/> 70/' /etc/netdata/health.d/cpu.conf
sudo sed -i 's/> 85/> 80/' /etc/netdata/health.d/cpu.conf

echo "Restarting Netdata"
sudo systemctl restart netdata

echo "Hello, Netdata setup completed succesfully!"
echo "You can access the dashboard at : http://<Server_IP>:19999"

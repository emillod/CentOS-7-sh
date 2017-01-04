systemctl start firewalld.service
firewall-cmd --state
firewall-cmd --get-default-zone
firewall-cmd --get-active-zones
firewall-cmd --list-all
firewall-cmd --get-zones
firewall-cmd --zone=home --list-all
systemctl restart firewalld.service
firewall-cmd --get-active-zones
systemctl restart network.service
systemctl restart firewalld.service
firewall-cmd --get-active-zones
firewall-cmd --zone=public --add-service=http
firewall-cmd --zone=public --add-service=https
firewall-cmd --zone=public --add-service=ssh
firewall-cmd --zone=public --permanent --add-service=http
firewall-cmd --zone=public --permanent --add-service=https
firewall-cmd --zone=public --permanent --add-service=ssh
firewall-cmd --zone=public --add-port=10050/tcp
firewall-cmd --zone=public --add-port=2641/tcp
sudo firewall-cmd --zone=public --permanent --add-port=10050/tcp
sudo firewall-cmd --zone=public --permanent --add-port=2641/tcp
echo "Poniżej znajdziesz listę wszystkich otwartych portów i usług:"
firewall-cmd --zone=public --permanent --list-ports
firewall-cmd --zone=public --permanent --list-services

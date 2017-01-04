sudo yum install epel-release
sudo yum update -y
sudo yum install -y firewalld
sudo systemctl start firewalld.service
sudo firewall-cmd --state
sudo firewall-cmd --get-default-zone
sudo firewall-cmd --get-active-zones
sudo firewall-cmd --list-all
sudo firewall-cmd --get-zones
sudo firewall-cmd --zone=home --list-all
sudo systemctl restart firewalld.service
sudo firewall-cmd --get-active-zones
sudo systemctl restart network.service
sudo systemctl restart firewalld.service
sudo firewall-cmd --get-active-zones
sudo firewall-cmd --zone=public --add-service=http
sudo firewall-cmd --zone=public --add-service=https
sudo firewall-cmd --zone=public --add-service=ssh
sudo firewall-cmd --zone=public --permanent --add-service=http
sudo firewall-cmd --zone=public --permanent --add-service=https
sudo firewall-cmd --zone=public --permanent --add-service=ssh
sudo firewall-cmd --zone=public --add-port=10050/tcp
sudo firewall-cmd --zone=public --add-port=2641/tcp
sudo firewall-cmd --zone=public --permanent --add-port=10050/tcp
sudo firewall-cmd --zone=public --permanent --add-port=2641/tcp
echo "Poniżej znajdziesz listę wszystkich otwartych portów i usług:"
sudo firewall-cmd --zone=public --permanent --list-ports
sudo firewall-cmd --zone=public --permanent --list-services

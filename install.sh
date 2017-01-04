# CentOS-7-sh
yum -y install epel-release
yum -y update
yum -y install mc wget nano
echo "### ZAINSTALOWANO PODSTAWOWE PAKIETY DO OBSŁUGI SYSTEMU ###"
yum -y install httpd
systemctl start httpd.service
systemctl enable httpd.service
yum -y install mariadb-server mariadb
systemctl start mariadb
mysql_secure_installation
systemctl enable mariadb.service
yum -y install php php-mysql
systemctl restart httpd.service
yum -y install php-fpm
echo "### ZAKOŃCZONO INSTALACJĘ PAKIETÓW ###"
echo "Zainstalowano:
- Nano Edytor
- MC - pakiet do zarządzania plikami
- Wget
- Apache
- MySQL MariaDB
- PHP"
sed -i 's/#Port [0-9]*/Port 2641/' /etc/ssh/sshd_config
sed -i 's/#Protocol 2/Protocol 2/' /etc/ssh/sshd_config
systemctl restart sshd
mkdir -p ~/.ssh
chmod 700 ~/.ssh && chmod 600 ~/.ssh/*
echo "### SSH ###
Również nastąpiła zmiana portu SSH na 2641"
echo "Rozpoczynam generowanie klucza SSH"
ssh-keygen -t rsa
echo "### KLUCZ ZOSTAŁ WYGENEROWANY ###

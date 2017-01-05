mkdir -p ~/.ssh
chmod 700 ~/.ssh && chmod 600 ~/.ssh/*
echo "### SSH ###"
echo "Rozpoczynam generowanie klucza SSH"
ssh-keygen -t rsa
echo "### KLUCZ ZOSTAŁ WYGENEROWANY ###"
sudo mv /etc/localtime /etc/localtime.bak
sudo ln -s /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
echo "Zmieniono czas na:"
date

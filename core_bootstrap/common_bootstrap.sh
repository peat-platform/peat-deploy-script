#!/usr/bin/env bash

cd $SCRIPT_ROOT_DIR

echo "ubuntu:$PASS" | chpasswd

sudo sed -i -e 's/ubuntu ALL=(ALL) NOPASSWD:ALL/ubuntu ALL=(ALL:ALL) ALL/g' /etc/sudoers.d/90-cloud-init-users


apt-get update -q -y

sudo apt-get install -y software-properties-common

apt-get install -y git tmux vim
apt-get install -qy wget curl
apt-get install -qy g++ curl libssl-dev apache2-utils
apt-get install -y make
apt-get install -y nmap
apt-get install -y apache2
apt-get install -y vim
apt-get install -y libssl0.9.8
apt-get install -y g++ uuid-dev binutils libtool autoconf automake maven

su ubuntu -l -c "curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -"
su ubuntu -l -c "sudo apt-get install --yes nodejs"
su ubuntu -l -c "alias node="nodejs""

#cp -Rf core_bootstrap/static/* /

cat > /home/$USER/.ssh/config <<DELIM
Host github.com
StrictHostKeyChecking no
DELIM


mkdir /home/$USER/repos

chown -R $USER:$GROUP /home/$USER/repos/

ssh-keygen -A

sudo apt-get install ufw -y
sudo ufw disable
sudo ufw default deny incoming
sudo ufw default deny outgoing
sudo ufw allow 22/tcp
sudo ufw allow 80/tcp
sudo ufw allow 443/tcp
sudo ufw allow 3306/tcp
sudo ufw allow 8888/tcp
sudo ufw allow out to any port 25
sudo ufw allow out to any port 53
sudo ufw allow out to any port 80
sudo ufw allow out to any port 443
sudo ufw allow out to any port 9418

echo y | ufw enable

sudo apt-get install -y fail2ban

sudo apt-get install -y logwatch

sudo sed -i -e 's/\/usr\/sbin\/logwatch --output mail/\/usr\/sbin\/logwatch --output mail --mailto $LOGWATCH_EMAIL --detail high/g' /etc/cron.daily/00logwatch

/usr/sbin/logwatch --output mail --mailto $LOGWATCH_EMAIL --detail high

source ~/.bashrc
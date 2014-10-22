#!/usr/bin/env bash

cd $SCRIPT_ROOT_DIR

apt-get update -q

sudo apt-get install -y software-properties-common

apt-get install -y git tmux vim
apt-get install -qy wget curl
apt-get install -qy g++ curl libssl-dev apache2-utils
apt-get install -y make
apt-get install -y nmap
apt-get install -y vim
apt-get install -y libssl0.9.8
apt-get install -y g++ uuid-dev binutils libtool autoconf automake maven

su -l -c "curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash && echo 'source ~/.nvm/nvm.sh' >> ~/.bashrc" $USER
su -l -c "nvm install 0.10 && nvm alias default 0.10 && npm install npm -g && npm install -g grunt-cli && npm install supervisor -g" $USER

#cp -Rf core_bootstrap/static/* /

cat > /etc/hosts <<DELIM
127.0.0.1 localhost
127.0.1.1 trusty64 dev.openi-ict.eu

# The following lines are desirable for IPv6 capable hosts
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
DELIM

cat > /home/$USER/.ssh/config <<DELIM
Host github.com
StrictHostKeyChecking no
DELIM

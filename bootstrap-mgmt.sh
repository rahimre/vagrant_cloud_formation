#!/usr/bin/env bash

# install ansible (http://docs.ansible.com/intro_installation.html)
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible
apt-get -y install git
git config --global user.name "Reza Rahim"

# copy examples into /home/vagrant (from inside the mgmt node)
cp -a /vagrant/scripts/* /home/vagrant
chown -R vagrant:vagrant /home/vagrant


cat >> /home/vagrant/.ssh/config <<EOL
Host *
  StrictHostKeyChecking no
EOL


# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL

# vagrant environment nodes
10.0.15.10  mgmt
10.0.15.11  lb
10.0.15.21  app1
10.0.15.22  app2
10.0.15.23  app3
EOL


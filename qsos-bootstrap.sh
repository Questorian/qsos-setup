#!/bin/sh

echo "qsos installation ..."

# start  installation
apt-get update
alias l='ls -la'

# ansible pre-reqs
apt-get install python -y
python --version
apt-get install python-apt -y

# ssh installation
apt-get install openssh-client -y
apt-get install openssh-server -y
ssh-keygen -t rsa -C "admin@QuestorSystems.com"


# manual installations
echo "Instlalation done!"
echo "now configure IP interface, and add public key from Ansible master to 'authorized_keys'"
echo "and you are good to go!"

#!/bin/sh

# steps:
# 1. console configure ip (/etc/network/interfaces)
# 2. reboot
# 3. ping test www.cern.ch
# 4. ensure the IOS Debian DVD is mounted on ROM drive
# 5. run boostrap script: wget -O - http://srv003/qsos-bootstrap.html | bash
# 6. copy across the 'root' keys - via ssh and scp connections
# 7. test connection with ssh - if not 'ssh -vT root@srv802'
#       (usually old keys need to be removed from master ~/.ssh/authorized_keys)
# 8. test ansible: 'ansbile all -m ping'
# 9. test ansible again: 'ansible all -m command -a "date"
# 10. kick-off anisble base script: 'ansible-playbook base.yml'

echo "qsos installation ..."

# start  installation
apt-get update
apt-get --yes install nfs-common

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

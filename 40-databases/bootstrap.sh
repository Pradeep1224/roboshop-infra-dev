#!/bin/bash
 
dnf install ansible -y 
cd /home/ec2-user
git clone https://github.com/Pradeep1224/ansiblev3.git
cd ansiblev3
git pull # for 2nd time if any changes it pulls

ansible-playbook -e component=mongodb main.yaml
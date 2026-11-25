#!/bin/bash
component=$1
environment=$2
app_version=$3
dnf install ansible -y 
#pip install botocore boto3
cd /home/ec2-user
git clone https://github.com/Pradeep1224/ansiblev3.git
cd ansiblev3
git pull # for 2nd time if any changes it pulls

ansible-playbook -e component=$component -e env=$environment -e app_version=$app_version main.yaml
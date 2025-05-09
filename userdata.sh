#!/bin/bash
set -e

hostnamectl set-hostname ${hostname}
sed -i 's/^preserve_hostname: false/preserve_hostname: true/' /etc/cloud/cloud.cfg

dnf install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
systemctl enable amazon-ssm-agent
systemctl start amazon-ssm-agent

dnf install -y zip
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install



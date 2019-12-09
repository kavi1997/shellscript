#!/bin/sh
sudo  yum update -y
yum install java-1.8.0
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
yum install -y jenkins
service jenkins start

 sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent
 sudo firewall-cmd --reload

echo "initial admin password"
cat /var/lib/jenkins/secrets/initialAdminPassword

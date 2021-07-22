#! /bin/bash
sudo yum update -y
#INSTALL JENKINS
#Add the Jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
#Import a key file from Jenkins-CI
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade
#Install Jenkins
sudo yum install jenkins java-1.8.0-openjdk-devel -y
#Start Jenkins as a service
sudo systemctl daemon-reload
sudo systemctl start jenkins

#INSTALL ANSIBLE
#Install and update epel repository
sudo yum install epel-release-latest-7.noarch.rpm
sudo yum update -y
#Install all individual packages inside the repository
sudo yum install git python python-devel python-pip openssl ansible -y
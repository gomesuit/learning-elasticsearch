#!/bin/sh

yum -y install java-1.8.0-openjdk
cp -f /vagrant/elasticsearch.repo /etc/yum.repos.d/elasticsearch.repo
yum -y install elasticsearch
systemctl start elasticsearch
systemctl enable elasticsearch

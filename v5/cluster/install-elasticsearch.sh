#!/bin/sh

yum -y install java-1.8.0-openjdk
cp -f /vagrant/etc/yum.repos.d/elasticsearch.repo /etc/yum.repos.d/elasticsearch.repo
yum -y install elasticsearch

cp -f /etc/elasticsearch/jvm.options /etc/elasticsearch/jvm.options.bk
cp -f /vagrant/etc/elasticsearch/jvm.options /etc/elasticsearch/jvm.options

cp -f /etc/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml.bk
cp -f /vagrant/etc/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

/usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-kuromoji

systemctl enable elasticsearch
systemctl start elasticsearch

#!/bin/sh

yum -y install java-1.8.0-openjdk
cp -f /vagrant/etc/yum.repos.d/elasticsearch.repo /etc/yum.repos.d/elasticsearch.repo
yum -y install elasticsearch-5.1.1-1
yum -y install kibana-5.1.1-1

cp -f /etc/elasticsearch/jvm.options /etc/elasticsearch/jvm.options.bk
cp -f /vagrant/etc/elasticsearch/jvm.options /etc/elasticsearch/jvm.options

cp -f /etc/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml.bk
cp -f /vagrant/etc/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

/usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-kuromoji

/usr/share/elasticsearch/bin/elasticsearch-plugin install x-pack

yum -y install kibana-5.1.1-1
cp -f /vagrant/etc/kibana/kibana.yml /etc/kibana/kibana.yml
/usr/share/kibana/bin/kibana-plugin install x-pack

systemctl enable elasticsearch
systemctl start elasticsearch

systemctl enable kibana
systemctl start kibana

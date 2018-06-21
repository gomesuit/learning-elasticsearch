#!/bin/sh -ue

NODE_NAME=$1

cp -f /etc/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml.bk
cp -f /vagrant/etc/elasticsearch/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml

sed -i -e "s/__NODE_NAME__/$NODE_NAME/" /etc/elasticsearch/elasticsearch.yml

systemctl restart elasticsearch

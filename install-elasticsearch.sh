#!/bin/sh

yum install -y java-1.8.0-openjdk

#echo 'export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.91-1.b14.el7_2.x86_64' >> ~/.bash_profile
#. ~/.bash_profile

#curl -L -O https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.3.4/elasticsearch-2.3.4.tar.gz

#tar -xvf elasticsearch-2.3.4.tar.gz
#cd elasticsearch-2.3.4/bin/
#./elasticsearch

yum install -y https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/rpm/elasticsearch/2.3.4/elasticsearch-2.3.4.rpm


echo "network.host: 0.0.0.0" >> /etc/elasticsearch/elasticsearch.yml



systemctl enable elasticsearch.service
systemctl start elasticsearch.service

wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list
sudo apt-get update && sudo apt-get install elasticsearch

sudo echo "network.host: 0.0.0.0" >> /etc/elasticsearch/elasticsearch.yml
sudo iptables -I INPUT -p tcp --dport 9200 -j ACCEPT
sudo iptables-save

sudo update-rc.d elasticsearch defaults 95 10
sudo /etc/init.d/elasticsearch start

### Runing container options

sudo docker run -d --name kibana -p 5601:5601 -e ELASTICSEARCH_URL=http://localhost:9200 --net host kibana

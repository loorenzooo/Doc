### Get official images
```bash
sudo docker pull elasticsearch
```
Le dépôt officiel est ici : https://hub.docker.com/_/elasticsearch/

### Run a container with volume and port mapping
```bash
sudo mkdir esdata
sudo docker run -d --name elasticsearch -v "$PWD/esdata":/usr/share/elasticsearch/data -p 9200:9200 elasticsearch
```
### Check running images
```bash
sudo docker ps
```
### Display logs of particular image
```bash
sudo docker logs elasticsearch
```

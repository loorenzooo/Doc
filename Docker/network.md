# See available networks
docker networkk list

# Expose a container port (5000) outside docker host through a docker host port (80)
docker run -p 80:5000 ${IMAGE} 

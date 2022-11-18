docker build -t nodeapp:v1 ./server
docker volume create servervol
docker network remove mynet
docker network create mynet
docker compose -f ./server/docker-compose.yml up -d
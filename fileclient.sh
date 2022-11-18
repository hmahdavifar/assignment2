docker build -t client:v1 ./client
docker volume create clientrvol
docker run --name nginx -d -p 80:80 -v clientrvol:/clientrvol --network=mynet client:v1
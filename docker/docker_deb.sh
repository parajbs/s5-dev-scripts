
docker stop s5-node
docker rm s5-node -f

mkdir -p /root/project/s5
sleep 2

cp setup_s5.sh /root/project/s5
docker run --name s5-node -d -v /root/project/s5:/app -it debian:bookworm-slim

sleep 8

docker exec -it s5-node bash -c /app/setup_s5.sh


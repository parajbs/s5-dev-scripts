
docker stop s5-node
docker rm s5-node -f

mkdir -p /root/project/s5
sleep 2
cd debian12-slim_64
cp setup_s5.sh /root/project/s5
cp default_config_extra.toml /root/project/s5
cd ..
docker run --name s5-node -p 4444:4444 -p 5522:5522 -p 8989:8989 -d -v /root/project/s5:/app -v /root/project/devs/S5:/root/devs/S5 -it debian:bookworm-slim

sleep 8

docker exec -it s5-node bash -c /app/setup_s5.sh


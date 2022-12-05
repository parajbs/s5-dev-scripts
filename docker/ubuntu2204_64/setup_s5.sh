apt-get update
apt-get install mc wget gpg apt-transport-https curl git sqlite3 sudo clang cmake llvm build-essential gcc make -y
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg
echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list

apt-get update
apt install dart -y
echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup-init.sh
chmod 0777 rustup-init.sh
./rustup-init.sh --default-toolchain stable-x86_64-unknown-linux-gnu -y
rm rustup-init.sh

source /root/.profile
source /root/.cargo/env

cd opt
mkdir devs
cd devs
git clone https://github.com/s5-dev/S5.git
cd S5
dart pub get
cd rust
cargo build --release
cd ..
cp /app/default_config_extra.toml config.toml
cp /app/s5node.service /etc/systemd/system/s5node.service

echo cd /opt/devs/S5/ > s5-node_start.sh
echo /usr/bin/dart /opt/devs/S5/bin/s5_server.dart /opt/devs/S5/config.toml >> s5-node_start.sh
chmod 0777 s5-node_start.sh













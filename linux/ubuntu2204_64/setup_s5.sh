apt-get update
apt-get install wget gpg apt-transport-https curl git sqlite clang cmake llvm build-essential gcc make -y
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

mkdir /opt/devs

cp default_config_extra.toml /opt/devs/config.toml
cp s5node.service /etc/systemd/system/s5node.service
cd /opt
cd devs
git clone https://github.com/s5-dev/S5.git
mv config.toml ~/devs/S5/config.toml

cd S5
dart pub get
cd rust
cargo build --release
cd ..

echo cd /opt/devs/S5/ > s5-node_start.sh
echo /usr/bin/dart /opt/devs/S5/bin/s5_server.dart /opt/devs/S5/config.toml >> s5-node_start.sh
chmod 0777 s5-node_start.sh




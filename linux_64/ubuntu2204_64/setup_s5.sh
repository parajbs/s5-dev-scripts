apt-get update
apt-get install wget gpg apt-transport-https curl git sqlite clang cmake llvm build-essential gcc make -y
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg
echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list

apt-get update
apt install dart -y
echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile

curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

source ~/.profile
source ~/.cargo/env

cd ~
mkdir devs
cd devs
git clone https://github.com/s5-dev/S5.git
cd S5
dart pub get
cd rust
cargo build --release
cd ..
cp default_config.toml config.toml
echo dart bin/s5_server.dart config.toml > s5-node_start.sh
chmod 0777 s5-node_start.sh


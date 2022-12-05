

apt update
apt install dirmngr curl git wget gpg sudo mc apt-transport-https sqlite3 libsqlite3-0 libsqlite3-dev gcc  clang  libclang-11-dev libclang-dev -y

apt install libgnutls30 llvm cmake --fix-missing -y

wget https://storage.googleapis.com/dart-archive/channels/dev/release/2.19.0-398.0.dev/sdk/dartsdk-linux-ia32-release.zip
unzip dartsdk-linux-ia32-release.zip
mv dart-sdk /usr/lib/dart

export PATH="$PATH:/usr/lib/dart/bin"
echo 'export PATH="$PATH:/usr/lib/dart/bin"' >> ~/.profile


curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs > rustup-init.sh
chmod 0777 rustup-init.sh
./rustup-init.sh --default-toolchain stable-i686-unknown-linux-gnu -y
rm rustup-init.sh

sleep 2
source /root/.profile
sleep 2
source /root/.cargo/env
sleep 2

mkdir /opt/devs

cp default_config_extra.toml /opt/devs/config.toml

cd /opt/devs
git clone https://github.com/s5-dev/S5.git


mv config.toml /opt/devs/S5/config.toml

cd /opt/devs/S5
dart pub get


cd rust/
cargo build --release
cd ..

cp config.toml default_config_extra.toml

echo cd /opt/devs/S5/ > s5-node_start.sh
echo /usr/lib/dart/bin/dart /opt/devs/S5/bin/s5_server.dart /opt/devs/S5/config.toml >> s5-node_start.sh
chmod 0777 s5-node_start.sh



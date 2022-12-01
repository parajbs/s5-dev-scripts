
mkdir c:\devs
cd c:\devs
git clone https://github.com/s5-dev/S5.git
cd S5
dart pub get
cd rust
cargo build --release
cd ..
copy default_config.toml config.toml
echo dart bin/s5_server.dart config.toml > s5-note_start.bat


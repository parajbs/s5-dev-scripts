
mkdir c:\devs

copy default_config_extra.toml c:\devs\config.toml
cd c:\devs
git clone https://github.com/s5-dev/S5.git
copy config.toml c:\devs\S5\config.toml
cd S5
dart pub get
cd rust
cargo build --release
cd ..
copy config.toml default_config_extra.toml
echo dart bin/s5_server.dart config.toml > s5-note_start.bat


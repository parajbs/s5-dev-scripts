
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

mkdir c:\utils
setx ChocolateyToolsLocation c:\utils
setx ChocolateyToolsLocation c:\utils /m

call refreshenv

choco install mingw -y
choco install dart-sdk -y
choco install wget -y
choco install curl -y
choco install sqlite -y
choco install git -y
choco install llvm -y

call refreshenv

wget https://static.rust-lang.org/rustup/dist/x86_64-pc-windows-msvc/rustup-init.exe
call rustup-init.exe --default-toolchain stable-x86_64-pc-windows-gnu -y

wget https://aka.ms/vs/17/release/vc_redist.x64.exe
call vc_redist.x64.exe /q /norestart


call refreshenv

echo "You must restart windows10, before you can build s5-node!!!"


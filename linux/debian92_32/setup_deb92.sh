
mv /etc/apt/sources.list /etc/apt/sources.list_old

echo deb http://cdn-aws.deb.debian.org/debian stretch main > /etc/apt/sources.list
echo deb http://security.debian.org/debian-security stretch/updates main >> /etc/apt/sources.list
echo deb http://cdn-aws.deb.debian.org/debian stretch-updates main >> /etc/apt/sources.list
apt update

apt install dirmngr

sleep 2

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 605C66F00D6C9793
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 0E98404D386FA1D9
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138

sleep 2

mv /etc/apt/sources.list /etc/apt/sources.list_old2
cp /etc/apt/sources.list_old /etc/apt/sources.list

apt update
sleep 2
apt install mc -y


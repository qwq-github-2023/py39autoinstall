yum install -y screen wget
yum install -y make.x86_64 gcc gcc-c++ zlib
wget https://raw.githubusercontent.com/qwq-github-2023/py39autoinstall/master/openssl_update.sh
sudo chmod -R 777 ./openssl_update.sh
./openssl_update.sh
wget https://raw.githubusercontent.com/qwq-github-2023/py39autoinstall/master/python39_install.sh
sudo chmod -R 777 ./python39_install.sh
./python39_install.sh
rm -f ./openssl_update.sh
rm -f ./python39_install.sh
yum update -y
yum -y install perl
cd /root
wget https://www.openssl.org/source/openssl-1.1.1w.tar.gz
tar -zxf openssl-1.1.1w.tar.gz
cd openssl-1.1.1w
mv /usr/bin/openssl /usr/bin/openssl_old
mv /usr/local/openssl /usr/local/openssl_old
./config --prefix=/usr/local/openssl
make -j4
make install
sudo ln -s /usr/local/lib64/libssl.so.1.1 /usr/lib64/
sudo ln -s /usr/local/lib64/libcrypto.so.1.1 /usr/lib64/
ln -s /usr/local/bin/openssl /usr/bin/openssl
openssl version

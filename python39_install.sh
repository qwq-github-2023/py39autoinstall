yum update -y
yum install -y zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel openssl-devel xz xz-devel libffi-devel
wget https://www.python.org/ftp/python/3.9.18/Python-3.9.18.tgz
tar -zxvf Python-3.9.18.tgz
mkdir -p /usr/local/python3
cd Python-3.9.18
./configure --prefix=/usr/local/python3 --with-openssl=/usr/bin/openssl
make -j4
make install
echo "export PATH=\$PATH:/usr/local/python3/bin" >> /etc/bashrc && source /etc/bashrc


rm -rf /usr/bin/python3
rm -rf /usr/bin/pip3
ln -s /usr/local/python3/bin/python3.9 /usr/bin/python3
ln -s /usr/local/python3/bin/pip3.9 /usr/bin/pip3
python3 --version

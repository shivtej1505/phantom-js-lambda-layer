# For Linux 64 Bit and CentOS based system
mkdir phantomjs-installer
cd phantomjs-installer
wget "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2"
sudo yum install fontconfig freetype freetype-devel fontconfig-devel libstdc++
echo "export PATH="$PWD/bin/:$PATH">>~/.bashrc
source ~/.bashrc

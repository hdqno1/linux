#! /usr/bin/bash
# 1.修改ubuntu和pip为清华源
wget https://tuna.moe/oh-my-tuna/oh-my-tuna.py
sudo python3 oh-my-tuna.py --global
echo '[global]
index-url = https://pypi.tuna.tsinghua.edu.cn/simple
[install]
trusted-host=mirrors.aliyun.com' >> pip.conf
mkdir .pip; mv pip.conf .pip/
sudo rm /var/lib/apt/lists/lock
sleep 1s
sudo apt-get update
sleep 1s
sudo apt-get upgrade
sleep 3s
# 2.安装python2,ipython2/3,pip2/3,virtualenv虚拟环境,vim git ssh mongodb数据库 mysql数据库 
sudo apt-get -y install python ipython ipython3 python-pip python3-pip
sleep 3s
sudo apt-get -y install vim nginx curl nodejs npm git ssh shadowsocks-libev
sleep 3s
sudo apt-get -y docker.io phantomjs redis mongodb mysql-server mysql-client libmysqlclient-dev
sleep 3s
sudo apt-get -y install apache2 php php-mysql libapache2-mod-php php-mysql php-curl php-gd
sleep 3s
sudo apt-get -y tomcat8 tomcat8-docs tomcat8-examples tomcat8-admin
sleep 3s
sudo pip install virtualenv virtualenvwrapper shadowsocks
sleep 3s
bash /usr/share/virtualenvwrapper/virtualenvwrapper.sh
sleep 1s
# 3.安装谷歌浏览器
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sleep 3s
sudo dpkg -i google-chrome-stable_current_amd64.deb
sleep 3s
# 4.安装pycharm专业版
sudo add-apt-repository -y ppa:ubuntu-desktop/ubuntu-make
sudo apt-get update
sudo apt-get -y install ubuntu-make
sleep 5s
umake ide pycharm-professional
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
sleep 5s
# 5.安装chromedriver
wget https://npm.taobao.org/mirrors/chromedriver/73.0.3683.68/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo cp chromedriver /usr/bin/
sleep 5s
# 6.清理文件并重启系统生效
sudo apt-get update
sudo apt-get upgrade
rm -r master.zip ok-py-env-master oh-my-tuna.py google-chrome-stable_current_amd64.deb chromedriver_linux64.zip .bash_history
sleep 5s
sudo reboot

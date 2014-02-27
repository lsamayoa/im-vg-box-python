sudo apt-get -y install python-dev 
sudo apt-get -y install libmysqlclient-dev
sudo apt-get -y install python-pip
sudo apt-get -y install curl

sudo pip install django
sudo pip install pyaml
sudo pip install mysql-python
sudo pip install werkzeug
sudo pip install mako
sudo pip install sqlalchemy


sudo curl https://gist.githubusercontent.com/lsamayoa01/b04df47b24eebe228a88/raw/8721d6b7f7cd74a3a2887caa3a0dbdf3b607ea6f/imsol > /bin/imsol
sudo chmod +x /bin/imsol

sudo mkdir /InteractuaMovil
cd /InteractuaMovil
git clone git@github.com:interactuamovil/im-core-python.git
cd /usr/lib/python2.7/dist-packages
sudo ln -s /InteractuaMovil/im-core-python/src/main/python/im
cd /etc
sudo ln -s /InteractuaMovil/im-core-python/src/main/python/configs im
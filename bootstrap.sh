sudo su root

apt-get install -y apache2 curl
curl --silent --location https://deb.nodesource.com/setup_9.x | bash -
apt-get install -y nodejs

cd /vagrant
npm install -g gulp
#npm install semantic-ui --save
#cd semantic/
#gulp build

rm -rf /var/www/html
#ln -s /vagrant/project/ /var/www/html
#cp -r /vagrant/semantic/dist/ /vagrant/project/assets/semantic

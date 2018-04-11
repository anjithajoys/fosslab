#to install apache
sudo apt-get update
sudo apt-get install apache2
#to check if it is installed take firefox and type localhost in the url space
#to start apache2 in the terminal
sudo service apache2 start
cd /var/www/html
#to get servers IP address
sudo ifconfig
sudo ifconfig wlan0 | grep inet | awk '{ print $2 }'
#to install mysql
sudo apt install mysql-server
#to install PHP
sudo apt-get install php5 libapache2-mod-php5 php5-mcrypt
sudo nano /etc/apache2/mods-enabled/dir.conf




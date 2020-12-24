sudo ln -s /etc/nginx/sites-available/django-project /etc/nginx/sites-enabled/django-project
sudo service nginx stop
sudo service nginx start

sudo apt-get update
sudo apt-get install certbot
sudo apt-get install python3-certbot-nginx

cd /var/www/html/
sudo mkdir .well-known
cd .well-known/
sudo mkdir acme-challenge

sudo certbot certonly --webroot --webroot-path=/var/www/html -d plantmonitor.mooo.com
sudo certbot renew --dry-run

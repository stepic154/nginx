
# gunicorn
#sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
#sudo ln -sf /home/box/web/etc/ask.py /etc/gunicorn.d/ask.py

sudo /etc/init.d/gunicorn restart

cd /home/box/web
sudo gunicorn --bind 0.0.0.0:8000 --access-logfile /tmp/acc_hello.log --error-logfile /tmp/err_hello.log -D hello:app

cd /home/box/web/ask
sudo gunicorn --bind 0.0.0.0:8080 --access-logfile /tmp/acc_ask.log --error-logfile /tmp/err_ask.log -D ask.wsgi:application

# nginx
sudo rm -rf /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
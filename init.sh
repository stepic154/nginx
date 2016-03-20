# nginx
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

# gunicorn
sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/etc/ask.py /etc/gunicorn.d/ask.py

sudo gunicorn -c /etc/gunicorn.d/hello.py hello:app
sudo gunicorn -c /etc/gunicorn.d/ask.py wsgi:application

sudo /etc/init.d/gunicorn restart

# nginx
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

# gunicorn
sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py
sudo ln -sf /home/box/web/ask/ask/wsgi.py /etc/gunicorn.d/dgango.py
sudo /etc/init.d/gunicorn restart
gunicorn hello:app -b 0.0.0.0:8080 -D
gunicorn django:application -b 0.0.0.0:8000 -D
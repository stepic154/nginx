#!/bin/bash
 
# nginx
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

# gunicorn
#sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/hello.conf
sudo ln -sf /home/box/web/hello.py /etc/gunicorn.d/hello.py
gunicorn -b 0.0.0.0:8080 hello
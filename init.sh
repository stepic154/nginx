
# nginx
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm -rf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

# gunicorn
#sudo ln -sf /home/box/web/etc/hello.conf /etc/gunicorn.d/hello.conf

#gunicorn -b 0.0.0.0:8080 --python path hello
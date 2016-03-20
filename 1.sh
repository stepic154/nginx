cd /home/box/web
sudo gunicorn --bind 0.0.0.0:8000 --access-logfile /tmp/acc_hello.log --error-logfile /tmp/err_hello.log -D hello:app

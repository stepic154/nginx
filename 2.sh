cd /home/box/web/ask
sudo gunicorn --bind 0.0.0.0:8080 --access-logfile /tmp/acc_ask.log --error-logfile /tmp/err_ask.log -D ask.wsgi:application

CONFIG = {
    'bind': '0.0.0.0:8000',
    'pidfile': '/home/box/gunicorn.pid',
    'accesslog': '/home/box/access.log',
    'errorlog': '/home/box/error.log',
    'mode': 'wsgi',
    'working_dir': '/home/box/web/ask',
    'args': (
        'ask.wsgi',
    ),
}
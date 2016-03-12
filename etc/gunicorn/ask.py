CONFIG = {
    'bind': '0.0.0.0:8000',
    'pidfile': '/home/box/gunicorn.pid',
    'accesslog': '/home/box/access.log',
    'errorlog': '/home/box/error.log',
    'mode': 'wsgi',
    # код конфига
    'working_dir': '/home/box/web/ask',
    'args': (
        # код конфига
        'ask.wsgi',
    ),
}
CONFIG = {
    'mode': 'wsgi',
    'bind': '0.0.0.0:8080',
    'working_dir': '/home/box/web',
    'args': (
        'ask.wsgi',
    ),
}
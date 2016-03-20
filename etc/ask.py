CONFIG = {
    'mode': 'wsgi',
    'bind': '0.0.0.0:8000',
    'working_dir': '/home/box/web/ask',
    'args': (
        'ask.wsgi',
    ),
}
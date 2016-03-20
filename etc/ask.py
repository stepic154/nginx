CONFIG = {
    'mode': 'wsgi',
    'working_dir': '/home/box/web/ask/ask',
    # 'python': '/usr/bin/python',
    'args': (
        '--bind=0.0.0.0:8000',
        '--access-logfile /home/box/acc_ask.log',
        '--error-logfile /home/box/err_ask.log',
        #'--daemon',
        '--workers=4',
        '--timeout=60',
        #'wsgi',
    ),
}
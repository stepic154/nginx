CONFIG = {
    'mode': 'wsgi',
    'working_dir': '/home/box/web',
    # 'python': '/usr/bin/python',
    'args': (
        '--bind=0.0.0.0:8080',
        '--access-logfile /home/box/acc_hello.log',
        '--error-logfile /home/box/err_hello.log',
        '--daemon',
        '--workers=4',
        '--timeout=60',
        #'wsgi',
        #'hello:app',
    ),
}
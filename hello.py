def app(environ, start_response):
    status = '200 OK'
    response_headers = [('Content-type','text/plain')]
    
    body = '\r\n'.join(environ['QUERY_STRING'].split('&'))
    
    start_response(status, response_headers)
    return [body]



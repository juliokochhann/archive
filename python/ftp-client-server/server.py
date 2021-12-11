import os
from pyftpdlib.authorizers import DummyAuthorizer
from pyftpdlib.handlers import FTPHandler
from pyftpdlib.servers import MultiprocessFTPServer as FTPServer

dir = os.path.dirname(os.path.abspath(__file__))

authorizer = DummyAuthorizer()

#authorizer.add_user("user", "12345", dir, perm="elradfmw")

authorizer.add_anonymous(dir, perm='elradfmw')

handler = FTPHandler
handler.authorizer = authorizer

server = FTPServer(('', 1026), handler)
server.serve_forever()

#!/usr/bin/env python
# coding= utf-8
'''
This module creates a TCP client that connects to a local server in order to send requests.
'''
import socket
import sys
import signal
import waitbar
from time import sleep

def signal_handler(signal, frame):
    '''
    This functions handles SIGINT (Ctrl-C) and SIGBREAK (Ctrl-Break) signals.
    '''
    print ('')
    print ('Processo encerrado pelo usuario.')

    sys.exit(0)

def get_platform():
    '''
    This function returns the O.S. platform and line break characters.

    :return: _platform, newline
    '''
    _platform = sys.platform.lower()

    if _platform.startswith('linux') or _platform == 'darwin':      #Operating System is either Linux or OS X
        newline = '\n'
    elif _platform.startswith('win'):       #OS is Windows
        newline = '\r\n'

    return _platform, newline

def connect(_platform):
    '''
    This function establishes a connection with the local server.

    :param _platform: The O.S. platform
    :return: tcp_socket, connected
    '''
    HOST = '127.0.0.1'     # Endereco IP do Servidor

    PORT = 8000            # Porta que o Servidor esta

    tcp_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    destino = (HOST, PORT)

    tcp_socket.settimeout(30)

    try:
        tcp_socket.connect(destino)
        tcp_socket.send(_platform)      #Send info about client Operating System
        connected = True
    except socket.error:
        connected = False

    return tcp_socket, connected

def recv_data(tcp_socket):
    '''
    This function receives data from the server.

    :param tcp_socket: The socket object that represents one endpoint of a network connection
    :param wb: WaitBar object
    :return: data
    '''
    try:
        data = tcp_socket.recv(4096)

        return data
    except socket.error as e:
        if e.message == 'timed out':
            print ("\r{0}".format('Servidor demorou muito para responder. Encerrando conexão...'))

        sleep(1)
        tcp_socket.close()
        sys.exit(0)

def send_requests(tcp_socket, newline):
    '''
    Sends requests to the server till the user exits the program or an error occurs.

    :param tcp_socket: The socket object that represents one endpoint of a network connection
    :param newline: O.S. line break characters
    '''
    error_flag = False

    msg = raw_input()

    while msg != 'exit':
        if len(msg):
            if msg[0] == '\\':
                try:
                    tcp_socket.send(msg)
                except socket.error:
                    tcp_socket.close()
                    sys.exit(0)

                wb = waitbar.WaitBar()

                wb.setDaemon(True)

                wb.start()

                for i in range(msg.count('\\')):
                    data = recv_data(tcp_socket)

                    print ("\r{0}".format(data + newline))

                    tcp_socket.send(str(len(data)))

                wb.stop()
            else:
                wb = waitbar.WaitBar()

                wb.setDaemon(True)

                wb.start()

                tcp_socket.send(msg)

                print ("\r{0}".format(recv_data(tcp_socket)))

                wb.stop()
        else:
            sys.stdout.write('\033[F')

        msg = raw_input()

def main():
    '''
    This is the main function of the client module.
    '''
    _platform, newline = get_platform()

    signal.signal(signal.SIGINT, signal_handler)

    if _platform.startswith('win'):
        signal.signal(signal.SIGBREAK, signal_handler)

    tcp_socket, connected = connect(_platform)

    if not connected:
        print ('Servidor indisponivel.')
        sys.exit(0)

    print ('Para sair digite \'exit\'' + newline)

    send_requests(tcp_socket, newline)

    tcp_socket.close()

if __name__ == "__main__":
    main()

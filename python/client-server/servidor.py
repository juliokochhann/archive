#!/usr/bin/env python
# coding= utf-8
'''
This module starts a local server at port 8000.
'''
import socket
import urllib
import random
import json
import sys
import signal
import waitbar
from time import sleep
from datetime import datetime
from threading import Thread, Event
import xml.etree.ElementTree as ElementTree

try:
    import twitter
    no_twitter = False
except ImportError:
    print ('Biblioteca python-twitter nao encontrada. Para instalar digite num terminal: python -m pip install python-twitter')
    no_twitter = True

def signal_handler(signal, frame):
    '''
    This functions handles SIGINT (Ctrl-C) and SIGBREAK (Ctrl-Break) signals.
    '''
    print ('')
    print ('Processo encerrado pelo usuario.')

    sys.exit(0)

def get_host_platform():
    '''
    This function returns the Host platform and line break characters.

    :return: host_platform, host_newline
    '''
    host_platform = sys.platform.lower()

    if host_platform.startswith('linux') or host_platform == 'darwin':      #Operating System is either Linux or OS X
        host_newline = '\n'
    elif host_platform.startswith('win'):       #OS is Windows
        host_newline = '\r\n'

    return host_platform, host_newline

def start_server():
    '''
    Starts the server.

    :return: tcp (socket object)
    '''
    HOST = ''
    PORT = 8000

    tcp = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    origem = (HOST, PORT)

    try:
        tcp.bind(origem)
    except socket.error:
        if socket.error.errno == 98:
            print ('Nao foi possivel iniciar o servidor. Detalhes:')
            print (socket.error.message)

    tcp.listen(1)       #Enable the server to accept connections.

    return tcp

def connect(tcp):
    '''
    This function accepts a TCP connection request coming from a client.

    :return: (socket object, address)
    '''
    return tcp.accept()         #Fica em loop aqui ate receber uma requisicao de conexao

def load_emojis(_platform):
    '''
    Loads a text file containing emoticons. Depending on the connected client platform this file varies.
    Also since it checks the client platform it returns its line break character set.

    :param _platform: The client platform
    :return: emojilist, newline
    '''
    if _platform.startswith('linux') or _platform == 'darwin':      #Client Operating System is either Linux or OS X
        file = open('emojis.txt', 'r')      #Load unicode emojis

        emojis = file.read()

        emojilist = emojis.split(' ')

        file.close()

        newline = '\n'

        return emojilist, newline
    elif _platform.startswith('win'):           #OS is Windows
        file = open('text_emojis.txt', 'r')     #Load text based emojis

        emojis = file.read()

        emojilist = emojis.split(' ')

        file.close()

        newline = '\r\n'

        return emojilist, newline

def load_cities():
    '''
    Loads a json file with info about nearly all the cities of the world.
    It has fields like id of the city, name, country, latitude, longitude.

    :return: city_list (python dictionary)
    '''
    file = open('city.list.json', mode = 'r')

    city_list = file.read()

    file.close()

    return json.loads(city_list)

def handle_requests(con, end_cliente, emojilist, api, cities_dictionary, newline):
    '''
    Handles the requests from a client. First it parses the string and returns a list of commands.
    If the message received doesn't start with a backslash then this function sends the message back to the client.
    Otherwise, it evaluates the command and send the suitable response.

    :param con: socket object
    :param end_cliente: client IP address
    :param emojilist: emoji list
    :param api: Twitter api
    :param cities_dictionary: a python dictionary of the cities
    :param newline: client line break character set.
    '''
    msg = con.recv(1024)

    if msg[0] == '\\':
        comandos = msg.split('\\')      #Cria uma lista dos comandos

        comandos.remove('')

        for cmd in comandos:
            sent_bytes = con.send(evaluate_command(cmd.strip(), emojilist, api, cities_dictionary, newline))       #Removes leading and trailing characters from 'cmd' and pass it to evaluate_command
            dt = datetime.now()

            if con.recv(4096) == str(sent_bytes):
                print ('[' + dt.strftime('%d. %B %Y %H:%M:%S') + '] ' + str(sent_bytes) + ' bytes enviados. Cmd: ' + cmd)
    else:
        con.send(msg)

def evaluate_command(cmd, emojilist, api, cities_dictionary, newline):
    '''
    This function evaluates a client command.

    :param cmd: client command
    :param emojilist: emoji list
    :param api: Twitter api
    :param cities_dictionary: a python dictionary of the cities
    :param newline: client line break character set
    '''
    if cmd == 'autores':
        return 'Julio Cesar Kochhann'
    elif cmd == 'datahora':
        dt = datetime.now()
        return dt.strftime('%A, %d. %B %Y %I:%M%p')
    elif cmd == 'rndemoji':
        return random.choice(emojilist)
    elif cmd == 'comandos':
        file = open('comandos.txt', 'r')

        available_commands = file.read()
        available_commands = available_commands.replace(';', newline + '\t')

        file.close()

        return available_commands
    elif cmd == 'randnoticia':
        return get_news(newline)
    elif cmd == 'trendtwitter':
        return twitter_trends(api, newline)
    elif cmd == 'rnddicionario':
        return random_dicio(newline)
    elif cmd.startswith('temperatura '):
        return get_temperature(cmd, cities_dictionary, newline)
    else:
        return 'Comando nao reconhecido'

def get_news(newline):
    '''
    Gets a random news on the internet and returns it as plain text.

    :param newline: client line break character set
    :return: random news (rndnews)
    '''
    news = []
    data = urllib.urlopen('http://feeds.jn.pt/JN-Ultimas')
    xml = data.read()

    root = ElementTree.fromstring(xml)
    doublenl = newline + newline

    for item in root.iter('item'):
        title = item.find('title').text
        description = item.find('description').text
        description = description.split('<')
        link = item.find('link').text

        news.append(title + doublenl + description[0] + doublenl + 'Leia a noticia completa em: ' + newline + link)

    rndnews = random.choice(news)
    rndnews = rndnews.encode('utf-8')

    return rndnews

def twitter_trends(api, newline):
    '''
    Gets the Twitter trending topics and returns the Top trend and its URL.

    :param api: Twitter api
    :param newline: client line break character set
    :return: top_trend, url
    '''
    if not no_twitter:
        toptrending = api.GetTrendsWoeid(23424768)    #Trending topics do Brasil

        trendings_json = json.loads(str(toptrending[0]))

        top_trend = str((trendings_json['name']).encode('utf-8'))

        url = str((trendings_json['url']).encode('utf-8'))

        try:
            tweet_volume = str(trendings_json['tweet_volume'])
            return 'Top Trend: ' + top_trend + newline + tweet_volume + ' Tweets' + newline + url
        except (KeyError):
            tweet_volume = 0
        finally:
            return 'Top Trend: ' + top_trend + newline + url
    else:
        return 'Comando indisponivel no momento.'

def random_dicio(newline):
    '''
    This function searches a random word in the RSS dictionary feed provided by dicio.com.br and returns the word's meaning.

    :param newline: client line break character set
    :return: word title and meaning as a string
    '''
    dicio = []
    data = urllib.urlopen('https://www.dicio.com.br/rss/')
    xml = data.read()

    root = ElementTree.fromstring(xml)
    doublenl = newline + newline

    for item in root.iter('item'):
        title = item.find('title').text
        title = title.capitalize()
        description = item.find('description').text

        dicio.append(title + doublenl + description)

    rnddicio = random.choice(dicio)
    rnddicio = rnddicio.encode('utf-8')

    return rnddicio

def get_temperature(cmd, cities_dictionary, newline):
    '''
    This function searches the weather for the requested local using OpenWeather's API.
    If there is more than one city with the same name in that country then returns info about all of them.
    If no country was informed then the weather of all cities in the world that matches the request will be returned.

    :param cmd: client command
    :param cities_dictionary: a python dictionary of the cities
    :param newline: client line break character set
    :return: temperature, nebulosity, latitude and longitude of the city (cities)
    '''
    fields = cmd.replace('temperatura', '')
    fields = fields.split(',')

    for i in range(len(fields)):
        fields[i] = fields[i].strip()

    identifiers = []

    if len(fields) > 1:
        city_name = fields[0]
        country = fields[1]

        for city in cities_dictionary:
            if city['name'] == city_name and city['country'] == country:
                identifiers.append((city['id'], city['name'], city['country'], city['coord']))   #Tupla com identificadores da cidade
    else:
        city_name = fields[0]

        for city in cities_dictionary:
            if city['name'] == city_name:
                identifiers.append((city['id'], city['name'], city['country'], city['coord']))

    clima = str()

    if len(identifiers) != 0:
        for i in range( len(identifiers) ):
            try:
                data = urllib.urlopen('http://api.openweathermap.org/data/2.5/weather?id=' + str(identifiers[i][0]) + '&APPID=76d6e697a954c18c9c7934079f26e620&units=metric&lang=pt')
            except urllib.HTTPError:
                return "\r{0}".format('Ocorreu um erro ao baixar informacoes do clima.')

            html = data.read()
            weather = json.loads(html)

            temperatura = str(weather['main']['temp'])      #Converte a temperatura (float) para String
            nebulosidade = str((weather['weather'][0]['description']).encode('utf-8')).capitalize()
            city = (identifiers[i][1]).encode('utf-8')
            country = (identifiers[i][2]).encode('utf-8')
            latitude = str(identifiers[i][3]['lat'])
            longitude = str(identifiers[i][3]['lon'])

            if i < len(identifiers) - 1:
                coordenadas = latitude + ', ' + longitude + newline + newline
            else:
                coordenadas = latitude + ', ' + longitude

            clima = clima + ('Clima em ' + city + ', ' + country + newline +
                            'Temperatura: ' + temperatura + ' graus Celsius' + newline +
                            'Nebulosidade: ' + nebulosidade + newline +
                            'Coordenadas: ' + coordenadas)

        return clima
    else:
        return 'Local não encontrado! Digite o nome completo e sem acentos da cidade e opcionalmente a sigla do país e.g. /temperatura Sao Paulo, BR.'

def main():
    '''
    This is the main function of the server module.
    '''
    print ('Iniciando servidor...')

    host_platform, host_newline = get_host_platform()

    signal.signal(signal.SIGINT, signal_handler)

    if host_platform.startswith('win'):
        signal.signal(signal.SIGBREAK, signal_handler)

    tcp = start_server()

    cities_dictionary = load_cities()

    api = str()

    if not no_twitter:
        api = twitter.Api(consumer_key='',
                          consumer_secret='',
                          access_token_key='',
                          access_token_secret='')

    print ('Pronto! Aguardando conexao...')

    wb = waitbar.WaitBar()

    wb.setDaemon(True)

    wb.start()

    con, end_cliente = connect(tcp)

    client_platform = con.recv(64)      #Receive info about client platform

    wb.stop()       #Stop Thread

    sleep(1)       #Wait Thread terminate

    print ('Conectado com ' + 'IP: ' + str(end_cliente[0]) + ' Porta: ' + str(end_cliente[1]) + '. Plataforma cliente: ' + client_platform)

    emojilist, newline = load_emojis(client_platform)

    try:
        while True:
            handle_requests(con, end_cliente, emojilist, api, cities_dictionary, newline)
    except (socket.error, IndexError):
        print (host_newline + 'Conexao com cliente', end_cliente, 'finalizada.')
        con.close()

if __name__ == "__main__":
    main()

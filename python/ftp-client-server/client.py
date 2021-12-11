from ftplib import FTP

ftp = FTP('')
ftp.connect('localhost',1026)
ftp.login()
#directory = ''             '#replace with your directory
#ftp.cwd(directory)
ftp.retrlines('LIST')

def uploadFile():
    filename = 'file2.txt'
    ftp.storbinary('STOR '+filename, open(filename, 'rb'))
    ftp.quit()

def downloadFile():
    filename = 'file1.txt'
    localfile = open(filename, 'wb')
    try:
        ftp.retrbinary('RETR ' + filename, localfile.write, 1024)
    except:
        pass
    ftp.quit()
    localfile.close()

def sendCommand():
    print ftp.sendcmd('STAT file1.txt')

#uploadFile()
#downloadFile()
#sendCommand()

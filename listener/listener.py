import json
import pymssql
import requests
from Email.email_sender import enviar_email
from config import flag_Email

class Listener:
    ROBOT_LISTENER_API_VERSION = 3

    def log_file(self, path):
        if flag_Email == 'True':
            print('====================================================================')
            print('ENVIANDO EMAIL COM O LOG.HTML...')
            print(path)
            print('====================================================================')
            enviar_email(path)
        else:
            print('====================================================================')
            print('EMAIL NÃO ENVIADO PORQUE A FLAG ESTÁ FALSE!')
            print('====================================================================')
import os
import smtplib
import mimetypes
from email import encoders
import email.mime.application
from email.mime.text import MIMEText
from email.mime.base import MIMEBase
from email.mime.multipart import MIMEMultipart

### README ###
# O log_path recebe o caminho de onde vai estar o arquivo de log que o robot gera no final da execução
# para adicionar como anexo no envio do email

# to_addrs: Você insere aqui quais e-mails vão receber o e-mail de report com a seguinte estrutura:
# to_addrs = ['??????@??????.com', '??????@??????.com', '??????@??????.com', '??????@??????.com']

def enviar_email(log_path):
    try:
        # conexão com os servidores de e-mail
        smtp_ssl_host = '??????'
        smtp_ssl_port = 465
        # username ou email para logar no servidor
        username = '??????@??????.com'
        password = '????????????'

        from_addr = '??????@??????.com'
        to_addrs = ['??????@??????.com']

        message = MIMEMultipart()
        message['subject'] = 'TITULO DO EMAIL AQUI'
        message['from'] = from_addr
        message['to'] = ', '.join(to_addrs)
        
        fo=open(log_path,"rb")
        part = email.mime.application.MIMEApplication(fo.read(),_subtype="html")
        fo.close()
        part.add_header('Content-Disposition', 'attachment', filename=log_path)
        message.attach(part)
        
        # conectaremos de forma segura usando SSL
        server = smtplib.SMTP_SSL(smtp_ssl_host, smtp_ssl_port)
        server.login(username, password)
        server.sendmail(from_addr, to_addrs, message.as_string())
        server.quit()
        print('info', f'EMAIL ENVIADO COM SUCESSO!!')
        print('info', '----------------------------------------------------------------------')
    except Exception as e:
        print('info', f'EMAIL NÃO ENVIADO! POR FAVOR CONTACTE O TIME DE QA!')
        print(e)
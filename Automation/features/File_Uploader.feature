#language: pt
Funcionalidade: validar funcionalidade File Uploader

Contexto:
  Dado que acesso a pagina "http://the-internet.herokuapp.com/upload"


@file_uploader @cenario_ok
Cenário: Posso validar file uploarder
E clico em 'Choose File'
E seleciono o arquivo com double click
Quando clico em 'Upload'
Entao visualizo a mensagem "File Uploaded!"

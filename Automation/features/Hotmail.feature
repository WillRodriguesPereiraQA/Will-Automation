#language: pt
Funcionalidade: login na página do hotmail

Contexto:
  Dado que acesso a pagina de "hotmail"


@login_hotmail @cenario_ok
Cenário: Posso validar logar no hotmail
Quando insiro o endereco no campo email
E clico em proximo
E insiro a senha do e-mail
Então clico em sign

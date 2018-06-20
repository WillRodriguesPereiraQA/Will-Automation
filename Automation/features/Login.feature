#language: pt
Funcionalidade: login com mensagem de erro

Contexto:
  Dado que acesso a pagina "http://the-internet.herokuapp.com/login"


@login @cenario_ok
Cenário: Posso validar erro ao logar
Quando eu insiro o endereco no campo email
E eu insiro a senha do e-mail
E eu clico em botao "botao_login"
Então visualizo mensagem de erro

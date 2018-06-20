#language: pt
Funcionalidade: validar checkbox

Contexto:
  Dado que acesso a pagina "http://the-internet.herokuapp.com/checkboxes"


@valida_checkbox @cenario_ok
Cenário: Posso validar checkbox selecionado
Então visualizo o segundo checkbox selecionado

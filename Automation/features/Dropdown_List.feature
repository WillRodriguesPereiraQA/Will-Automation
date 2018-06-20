#language: pt
Funcionalidade: validar funcionalidade Dropdown

Contexto:
  Dado que acesso a pagina "http://the-internet.herokuapp.com/dropdown"


@dropdown_option1 @cenario_ok
Cenário: Posso validar dropdown
E clico em "Please select an option"
Entao seleciono "Option 1"

@dropdown_option2 @cenario_ok
Cenário: Posso validar dropdown
E clico em "Please select an option"
Entao eu seleciono "Option 2"

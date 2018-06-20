#language: pt
Funcionalidade: validar funcionalidade Drag and Drop

Contexto:
  Dado que acesso a pagina "http://the-internet.herokuapp.com/drag_and_drop"


@drag_and_drop @cenario_ok
Cenário: Posso validar drag and drop
E visualizo duas colunas A e B
Quando arrasto a coluna A para a coluna B
Entao valido as colunas

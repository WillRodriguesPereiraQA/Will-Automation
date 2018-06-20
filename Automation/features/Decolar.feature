#language: pt
Funcionalidade: Realizar pesquisa no Decolar

Contexto:
  Dado que acesso a pagina "https://www.decolar.com/passagens-aereas/"


@acessar_decolar
Cenário: Posso validar página da Decolar
Quando eu clico em botao "botao_fechar"
Entao visualizo a page "title_decolar"


@pesquisar_decolar
Cenário: Posso validar pesquisa no site da Decolar
E eu clico em botao "botao_fechar"
E eu insiro no campo "campo_origem_decolar" o valor "sao"
E eu insiro no campo "campo_destino_decolar" o valor "ams"
Quando eu seleciono "ida" e "volta"
E eu clico em botao "botao_procurar_decolar"
Entao visualizo a page "title_summary_decolar"

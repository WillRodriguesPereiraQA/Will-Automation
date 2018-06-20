#language: pt

Funcionalidade: Validar presença e funcionamento de mensagens, links e imagens.

Contexto:
 Dado que acesso a pagina de "Móveis Planejados Pedido de Orçamento Cômodo"
 E eu clico no ambiente "detalhe_imagem_servico"
 Quando eu clico no botao "botao_proximo_lead"

@valida_inserir_Mais_450_caracteres @sessao_detalhes_medidas
Cenário: Validar funcionalidade do campo descrição do projeto - Limite de Caracteres
 Quando eu insiro no campo "campo_description_mvp" o valor "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum... Lorem ipsum"
 Então valido a quantidade maxima de "450" caracteres no campo "campo_description_mvp"

 @valida_inserir_450_caracteres @sessao_detalhes_medidas
 Cenário: Validar funcionalidade do campo descrição do projeto com limite de 450 caracteres - Limite de Caracteres
  Quando eu insiro no campo "campo_description_mvp" o valor "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem"
  Então eu clico no botao "botao_proximo_detalhes_mvp"

@valida_inserir_nome_projeto @sessao_detalhes_medidas
Cenário: Validar funcionalidade dos campos dos detalhes do projeto
 E eu insiro no campo "texto_nome_projeto_mvp" o valor "Test Automation"
 E eu insiro no campo "campo_altura_mvp" o valor "3"
 E eu insiro no campo "campo_largura_mvp" o valor "1"
 Então eu faço upload da imagem

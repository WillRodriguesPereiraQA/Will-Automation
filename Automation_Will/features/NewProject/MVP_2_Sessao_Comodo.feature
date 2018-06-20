#language: pt

Funcionalidade: Validar presença e funcionamento de mensagens, links e imagens.

Contexto:
  Dado que acesso a pagina de "Móveis Planejados Pedido de Orçamento Cômodo"

@valida_campos_comodo @sessao_comodo
Esquema do Cenário: Posso validar os campos da Sessao Comodo
  Então visualizo a exibicao dos <campos_comodo>

Exemplos:
  | campos_comodo                  |
  | "banner_orcamento_mvp"         |
  | "detalhes_projeto"             |
  | "item_comodo"                  |
  | "item_detalhes_medidas"        |
  | "informacoes_pessoais"         |
  | "item_endereco"                |
  | "item_contato"                 |
  | "msg_prosseguir_escolha"       |
  | "detalhe_imagem_casa_completa" |
  | "detalhe_imagem_cozinha"       |
  | "detalhe_imagem_dormitorio"    |
  | "detalhe_imagem_sala"          |
  | "detalhe_imagem_banheiro"      |
  | "detalhe_imagem_servico"       |

@valida_proximo_desabilitado @sessao_comodo
Cenário: Posso validar o botao próximo desabilitado
  Então visualizo o botao proximo desabilitado

@valida_selecionar_3_ambientes @sessao_comodo
Cenário: Posso validar a seleção de somente dois ambientes
 E eu clico no ambiente "detalhe_imagem_sala"
 E eu clico no ambiente "detalhe_imagem_banheiro"
 E eu clico no ambiente "detalhe_imagem_servico"
 Quando eu clico no botao "botao_proximo_lead"
 Então visualizo todos ambientes selecionados


@valida_2_ambientes_pular_etapa @sessao_comodo
Cenário: Posso selecionar 2 ambientes disponíveis e pular etapa
  E eu clico no ambiente "detalhe_imagem_casa_completa"
  E eu clico no ambiente "detalhe_imagem_cozinha"
  Quando eu clico no botao "botao_pular_lead"
  Então não visualizo ambientes selecionados


@valida_2_ambientes_proximo @sessao_comodo
Cenário: Posso selecionar 2 ambientes disponíveis e próximo
  E eu clico no ambiente "detalhe_imagem_sala"
  E eu clico no ambiente "detalhe_imagem_cozinha"
  Quando eu clico no botao "botao_proximo_lead"
  Então visualizo os ambientes selecionados

@teste
Cenário: Posso selecionar o botão proximo
E eu clico no botao proximo
Entao visualizo os ambientes

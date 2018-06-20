#language: pt

Funcionalidade: Validar presença e funcionamento de mensagens, links e imagens.

Contexto:
 Dado que acesso a pagina de "Móveis Planejados Pedido de Orçamento Cômodo"
 E eu clico no ambiente "detalhe_imagem_servico"
 E eu clico no botao "botao_proximo_lead"
 Quando eu clico no botao "botao_proximo_detalhes_mvp"

@valida_mensagens_endereco @sessao_endereco
Esquema do Cenário: Posso validar mensagens
 E eu clico no botao <texto_endereco>
 Então posso visualizar as mensagens <texto_endereco>

Exemplos:
   | texto_endereco                 |
   | "texto_complete_endereco"      |
   | "texto_loja_proxima_orcamento" |
   #| "texto_casas_bahia"            |
   #| "texto_loja_ramos"             |


@valida_escolher_loja @sessao_edereco
Cenário: Posso validar escolha de loja
 E eu clico no botao "botao_escolher_outra_loja_mvp"
 E eu clico no botao "botao_loja_mvp"
 E eu clico no botao "botao_selecionar_loja_mvp"
 Então eu clico no botao "botao_proximo_endereco_mvp"

@valida_preencher_endereco @sessao_endereco
Cenário: Posso preencher endereco
E eu insiro no campo "campo_numero_mvp" o valor "10"
E eu insiro no campo "campo_complemento_mvp" o valor "bloco b"
Quando eu clico no botao "botao_proximo_endereco_mvp"
#Entao visualizo a exibicao da mensagem "msg_estamos_quase_terminando_mvp" no elemento "msg_elemento_quase_terminando_mvp"

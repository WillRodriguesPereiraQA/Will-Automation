#language: pt

Funcionalidade: Validar presença e funcionamento de mensagens, links e imagens.

Contexto:
  Dado que acesso a pagina de "Móveis Planejados Pedido de Orçamento Cômodo"
  E eu clico no ambiente "detalhe_imagem_servico"
  E eu clico no botao "botao_proximo_lead"
  E eu clico no botao "botao_proximo_detalhes_mvp"
  E eu clico no botao "botao_proximo_endereco_mvp"

@valida_campos_contato_ligue @sessao_conclusao
Cenário: Posso inserir dados de contato com numero de telefone
  E eu insiro no campo "campo_nome_completo_mvp" o valor "Maria Adelaide"
  E eu insiro no campo "campo_telefone_mvp" o valor "11952345607"
  E eu insiro no campo "campo_email_mvp" o valor "adelaide@gmail.com.br"
  Quando eu seleciono o Checkbox "checkbox_me_ligue_mvp"
  Então eu clico no botao "botao_finalizar_o_pedido_mvp"

@valida_campos_contato_email @sessao_conclusao
Cenário: Posso inserir dados de contato
  E eu insiro no campo "campo_nome_completo_mvp" o valor "Maria Adelaide"
  E eu insiro no campo "campo_telefone_mvp" o valor "11952345607"
  E eu insiro no campo "campo_email_mvp" o valor "adelaide@gmail.com.br"
  Quando eu seleciono o Checkbox "checkbox_me_email_mvp"
  Então eu clico no botao "botao_finalizar_o_pedido_mvp"

@valida_pedido_finalizado @sessao_conclusao
Cenário: Posso validar modal de móveis planejados orçamento pedido final
  E eu insiro no campo "campo_nome_completo_mvp" o valor "Maria Adelaide"
  E eu insiro no campo "campo_telefone_mvp" o valor "11952345607"
  E eu insiro no campo "campo_email_mvp" o valor "adelaide@gmail.com.br"
  E eu seleciono o Checkbox "checkbox_me_ligue_mvp"
  Quando eu clico no botao "botao_finalizar_o_pedido_mvp"
  Então eu visualizo pedido enviado

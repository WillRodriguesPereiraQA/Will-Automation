#language: pt

Funcionalidade: Realizando teste nas referentes telas de pagamento dos campos:
  limite do cartao, campo parcelamento, data validade, limite de caractere no campo nome,
  validar cactere especial e validar campo desabilitado caso não preencha cartao corretamente.

#FMDPADT-68 FMDPADT-69 FMDPADT-70 FMDPADT-75
@pagamento_ @hb
Esquema do Cenario: Validar funcionalidade do campo: Validade Mês/ANO, limite de dados e codigo
  Dado que estou logado com "usuarioLucasTeste"
  E que acesso um produto com a tag "normal_sem_garantia"
  E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
  Quando preencho os campos do cartao de credito com dados <valor>
  E eu clico no botao "botao_ConcluirPgto"
  Entao valido a mensagem <mensagem> no campo <campo>

  Exemplos:
  |        valor       |              mensagem                |             campo                 |
  |    "mesInvalido"   | "mensagem_mes_pagamento_invalido"    | "label_alerta_mes_invalido"       |
  |    "anoInvalido"   | "mensagem_ano_pagamento_invalido"    | "label_alerta_ano_invalido"       |
  |   "nomeInvalido"   | "mensagem_limite_nome_invalido"      | "label_limite_nome_invalido"      |
  |  "codigoInvalido"  | "mensagem_codigo_seguranca_invalido" | "label_codigo_seguranca_invalido" |

#FMDPADT-76
@cartao @cb
Cenario: Compra com múltiplos SKUs, entrega normal e cartão Master Card
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
  E que acesso um produto com a tag "normal_com_garantia"
  E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
  Quando preencho a forma de pagamento "um_cartao_credito_master"
  Entao valido a finalizacao da compra com "um_cartao_credito" e seguro "nao"

@servico
Cenario: Compra com sku serviço, entrega normal e cartão Master Card
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_com_garantia"
  E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
  Quando preencho a forma de pagamento "um_cartao_credito_master"
  Entao valido a finalizacao da compra com "um_cartao_credito" e seguro "nao"

#FMDPADT-78
@retira @cb
Cenario: Compra retira fácil através da tela de detalhe do produto, cartão de credito Master Card
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "retira_com_garantia"
  Quando adiciono o item ao carrinho pelo metodo "retira" e servico "nao"
  Entao realizo a finalizacao da compra com "um_cartao_credito_master" e garantia "nao"


#FMDPADT-74
@validarNumeroDoCredito_CvvDesabi
Cenario: Validar funcionalidade do campo: Número do cartão de crédito e campo cvv desabilitado
  Dado que estou logado com "usuarioLucasTeste"
  E que acesso um produto com a tag "normal_sem_garantia"
  E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
  Quando preencho os campos do cartao de credito com dados "cartaoInvalido"
  #E eu clico no botao "botao_ConcluirPgto"
  Entao valido a existencia do elemento "imagem_cartao_invalido"
  E valido o campo "campo_des_cvv" desabilitado

#FMDPADT-73
@dadoValido @hb
Cenario: Validar funcionalidade do campo: Nome do titular do Cartão de Crédito - dados válidos
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
  Quando preencho os campos do cartao de credito com dados "dadosValidos"
  E eu clico no botao "botao_ConcluirPgto"
  Entao visualizo a exibicao da mensagem "mensagem_troca_forma_pagamento" no elemento "label_troca_forma_pagamento"

#FMDPADT-71
@validarBotaoPagarDoisCartoes @hb
Cenario: Validar funcionalidade do botão: Pagar com dois cartões
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
  Quando eu clico no botao "botao_pagar_dois_cartoes"
  Entao visualizo a exibicao da mensagem "mensagem_pagar_dois_cartoes" no elemento "campo_pagar_dois_cartoes"

#FMDPADT-72
@validarCamposObrigatorios @hb
Cenario: Validar funcionalidade campos Obrigatórios
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
  Quando preencho os campos do cartao de credito com dados "dadosInvalidos"
  E eu clico no botao "botao_ConcluirPgto"
  Entao visualizo a exibicao da mensagem "mensagem_informe_cartao" no elemento "label_informe_cartao"
  E visualizo a exibicao da mensagem "mensagem_informe_nome" no elemento "label_informe_nome"
  E valido o campo "campo_des_cvv" desabilitado


@validarFechPedidoDebito
Esquema do Cenario: Validar funcionalidade do fechamento do pedido: Débitos
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_com_garantia"
  E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
  Quando preencho a forma de pagamento <debito>
  Entao valido o popup <debito>

  Exemplos:
  |         debito          |
  |  "debito_online_itau"   |
  |  "debito_online_visa"   |
  | "debito_online_maestro" |

#FMDPADT-89
@validarCreditoCaracEspe
Cenario:  Validar funcionalidade do campo: Nome do titular do Cartão de Crédito - Caracter especial
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_com_garantia"
  E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
  E seleciono a forma de pagamento "um_cartao_credito_master"
  Quando eu insiro no campo "texto_NomeTitular" o valor "Guilherme @!#@&¨%%Teste"
  Entao valido o texto sem caracter especial "texto_NomeTitular"

#27/03
@validarParc
Cenario: Validar funcionalidade do campo: Parcelamento
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
  Quando preencho os campos do cartao de credito com dados "parcInvalida"
  E eu clico no botao "botao_ConcluirPgto"
  Entao visualizo a exibicao da mensagem "mensagem_parc_invalida" no elemento "texto_informe_qtd_parcelas"

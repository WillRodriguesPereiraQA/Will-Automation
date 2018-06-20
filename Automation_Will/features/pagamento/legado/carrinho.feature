#language: pt

Funcionalidade: Validações referentes a tela do carrinho

@red @closed @regressivo
Esquema do Cenario: Validar funcionalidade dos botoes comprar mais Produtos e concluir compra na tela carrinho
 Dado que acesso o site da bandeira
 E realizo a pesquisa "11526479"
 E seleciono o produto desejado com garantia de "nao" e seguro para "nao"
 Quando eu clico no botao <opcao>
 Entao eu visualizo a pagina <pagina>

 Exemplos:
  |             opcao            |         pagina        |
  |    "botao_mais_produtos"     |     "Meus Pedidos"    |
  |    "botao_ConcluirCompra"    |   "identificacao"     |

@pedidos @closed @regressivo
Cenário: Validar funcionalidade do hiperlink Meus Pedidos
    Dado que estou logado com "usuarioGuilhermeTesteCB"
    E eu clico no botao "logo"
    Quando eu clico no botao "link_meuss_pedidos"
    Entao valido a existencia do elemento "campo_meus_pedidos"

@cupom @cb
Cenario:Validar funcionalidade do campo Insira seu cupom - Limite de Caracteres
    Dado que acesso o site da bandeira
    E realizo a pesquisa "11526479"
    E seleciono o produto desejado com garantia de "nao" e seguro para "nao"
    Quando eu insiro no campo "texto_insira_cupom" o valor "iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"
    Entao valido a existencia de somente "35" caracteres no campo "texto_insira_cupom"

@utilizar @cb
Cenario: Validar funcionalidade do botão na tela carrinho: Utilizar - Insira seu Cupom
#validando somente cenário inválido
  Dado que acesso o site da bandeira
  E realizo a pesquisa "11526479"
  E seleciono o produto desejado com garantia de "nao" e seguro para "nao"
  E eu insiro no campo "texto_insira_cupom" o valor "000000000000"
  Quando eu clico no botao "botao_inserir_cupom"
  Entao valido a mensagem "mensagem_cupom_invalido" no campo "texto_alerta_cupom"

@carrinho @cb
Cenario: Carrinho Validar a exibição do texto: Meu Carrinho
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  E eu clico no botao "botao_Comprar"
  Entao valido a mensagem "mensagem_meu_carrinho" no campo "campo_meu_carrinho"

@barateiro
Esquema do Cenario: Carrinho Validar funcionalidade do botão: Visa/PayPal Checkout
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  E eu clico no botao "botao_Comprar"
  E eu clico no botao <opcao>
  Entao eu visualizo a pagina de pagamento <pagina>

  Exemplos:
   |           opcao              |            pagina          |
   |    "botao_Visa_Checkout"     |   "frame_visa_checkout"    |
   |       "botao_Paypal"         |  "campo_pagamento_paypal"  |


@cartao @regressivo @closed
Cenario: Compra com múltiplos SKUs, entrega normal e cartão Master Card
   Dado que estou logado com "usuarioGuilhermeTesteCB"
   E que acesso um produto com a tag "normal_sem_garantia"
   E adiciono o item ao carrinho pelo metodo "normal" e servico "nao"
   E que acesso um produto com a tag "normal_com_garantia"
   Quando adiciono o item ao carrinho pelo metodo "normal_servico" e servico "12_meses"
   Entao preencho a forma de pagamento "um_cartao_credito_master"
   # Entao valido a finalizacao da compra com "um_cartao_credito" e seguro "nao"


#falta finalizar

# @senha_
# Cenario: Validar funcionalidade do hiperlink: Esqueci minha senha
#    Dado que acesso o site da bandeira
#    E eu clico no botao "botao_CadastreSe"
#    E eu clico no botao "botao_esqueci_minha_senha"
#    Quando preencho os dados esqueci minha senha
#    E eu clico no botao "botao_ConcluirPgto"
#    Entao valido a mensagem "mensagem_esqueci_minha_senha" no campo "link_esqueci_minha_senha"

@resumo @cb
Cenario: Validar exibição: Resumo da compra
   Dado que estou logado com "usuarioGuilhermeTesteCB"
   E que acesso um produto com a tag "normal_sem_garantia"
   E eu clico no botao "botao_Comprar"
   Quando eu clico no botao "botao_concluir_compra"
   Entao valido a mensagem "mensagem_resumo_compra" no campo "campo_resumo_compra"

@meuPerfil
Esquema do Cenario: Validar funcionalidade da aba: Meu Perfil
    Dado que estou logado com "usuarioGuilhermeTesteCB"
    E eu clico no botao "logo"
    E eu clico no botao "link_meus_pedidos"
    # E eu clico no botao "aba_meus_pedidos"
    Quando eu clico no botao <opcao>
    Entao eu visualizo a pagina <pagina>

    Exemplos:
    |             opcao            |       pagina        |
    # |    "botao_meu_perfil"        |     "Meu perfil"    |
    |    "botao_meus_pedidos"      |   "Meus Pedidos"    |

#FMDPADT-79 FMDPADT-80
@maxMinQtd @cb @closed @regressivo
Esquema do Cenario: Validar quantidade max/min do produto no campo Quantidade
  Dado que acesso um produto com a tag "normal_sem_garantia"
  E eu clico no botao "botao_Comprar"
  Quando eu insiro no campo "campo_qtd_produto" o valor <qtd>
  E eu clico no botao "campo_qtd_carrinho"
  Entao valido a mensagem <mensagem> no campo <campo>

  Exemplos:
  |  qtd |            mensagem             |           campo           |
  | "10" |     "mensagem_qtd_invalida"     |    "texto_qtd_invalida"   |
  |  "0" | "mensagem_sem_produto_carrinho" |  "label_Nao_Ha_Produto_R" |

#FMDPADT-81
@qtdPadra @cb @regressivo @closed
Cenario: Validar quantidade padrão do produto (1) no campo Quantidade
  Dado que acesso um produto com a tag "normal_sem_garantia"
  Quando eu clico no botao "botao_Comprar"
  Entao valido o campo "campo_quantidade_carrinho"

#FMDPADT-82
@qtd @cb
Cenario: Validar digitação de caracteres especiais no campo: Quantidade
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  E eu clico no botao "botao_Comprar"
  Quando eu insiro no campo "campo_qtd_sku" o valor "@!#@5&¨%%"
  Entao valido o texto sem caracter especial "campo_qtd_sku"

#FMDPADT-83
@qtdMax @cb
Cenario: Validar funcionalidade do campo: Calcule o Frete - Quantidade máx de caracteres
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  Quando eu insiro no campo "campo_carrinho_cep" o valor "0000000000000000"
  Entao valido a existencia de somente "9" caracteres no campo "campo_carrinho_cep"

#21/03
@qtdMin
Cenario: Validar funcionalidade do campo: Calcule o Frete - Quantidade min de caracteres
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  Quando eu insiro no campo "campo_carrinho_cep" o valor "11111"
  E eu clico no botao "botao_OkCalculoFrete"
  Entao valido a existencia do elemento "campo_min_cep"


#FMDPADT-84
@caracEspeciais @cb
Cenario: Validar funcionalidade do campo: Calcule o Frete - Caracteres Especiais
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  Quando eu insiro no campo "campo_carrinho_cep" o valor "@!#@577&¨%%"
  Entao valido o texto sem caracter especial "campo_carrinho_cep"

#FMDPADT-85
@calculeFrete @cb @regressivo @closed
Cenario: Validar funcionalidade do botao Consultar - Calcule o Frete
  E que acesso um produto com a tag "normal_sem_garantia"
  Quando eu insiro no campo "campo_carrinho_cep" o valor "06310350"
  E eu clico no botao "botao_OkCalculoFrete"
  Entao valido o campo "label_endereco"

#FMDPADT-86
@saibaMais @cb
Cenario: Validar o link Saiba Mais
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  E que acesso um produto com a tag "normal_sem_garantia"
  Quando eu clico no botao "link_saiba_mais"
  Entao valido a existencia do elemento "frame_saiba_mais"

#20/03
#FMDPADT-88
@loginLogout @cb
Cenario: Realizar login e logout no site
  Dado que estou logado com "usuarioGuilhermeTesteCB"
  Quando eu clico no botao "logo"
  Entao eu clico no botao "link_sair"

#20/03
#FMDPADT-87
@garantiaEstendida @cb
Cenario: Validar funcionalidade da aba: Seguro de Garantia Estendida
  Dado que acesso um produto com a tag "normal_com_garantia"
  Quando seleciono o produto desejado com garantia de "12_meses" e seguro para "nao"
  Entao visualizo a exibicao da mensagem "garantia_12_meses" no elemento "campo_nome_garantia"


  # Dado que acesso o site da bandeira
  # E realizo a pesquisa "11526479"
  # E seleciono o produto desejado com garantia de "12_meses" e seguro para "nao"
  # Entao valido a existencia do elemento "campo_garatia"

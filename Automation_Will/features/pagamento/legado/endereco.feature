#language: pt

Funcionalidade: Validações referentes a tela do Endereço

#28/03
@link_endereco
Esquema do Cenario: Validar funcionalidade do hiperlink Editar/Excluir
  Dado que estou logado com "usuarioGuilhermeTeste"
  E que acesso um produto com a tag "normal_sem_garantia"
  E eu clico no botao "botao_Comprar"
  E eu clico no botao "botao_concluir_compra"
  Quando que eu clico no link <link>
  Então valido a existencia do elemento "label_tipo_endereco"

  Exemplos:
  |         link            |
  | "link_editar_endereco"  |
  | "link_excluir_endereco" |

@28/03
@resumo_compra
Cenario: Validar exibição Resumo da compra
  Dado que estou logado com "usuarioGuilhermeTeste"
  E que acesso um produto com a tag "normal_com_garantia"
  E eu clico no botao "botao_RecusaGarantia"
  Quando que eu clico no link "link_editar_endereco"
  Entao valido a mensagem "mensagem_resumo_compra" no campo "campo_resumo_compra"

@validaOpcoesEntrega
Cenario: Validar exibição Opções de entrega
  Dado que estou logado com "usuarioGuilhermeTeste"
  E que acesso um produto com a tag "normal_com_garantia"

  E eu clico no botao "botao_Comprar"
  Quando eu clico no botao "botao_concluir_compra"
  Entao valido a mensagem "mensagem_opcoes_entrega" no campo "label_opcoes_entrega"

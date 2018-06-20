#language: pt

Funcionalidade: Verificar todas as funcionalidades do site.
 Como usuário eu quero fazer buscas e finalizar minhas compras com todas as posibilidades: cartao de credito e dois cartões de
 credito. Recebendo em casa e retirando na loja. Com usuarios cadastrados e nao cadastrados.

Contexto:
 Dado que acesso a pagina de "login"

@busca @compras
Esquema do Cenário: Realizar a compra de um produto por meio de uma busca, com o meio de pagamento cartao de credito, com frete todas opcoes de frete, garantia e seguro.

 E faço o login com email "valido" e senha "valida" e "limpar" o carrinho
 E eu clico no botao "logo"
 E realizo a pesquisa "11526479"
 E seleciono o produto desejado com garantia de <garantia> e seguro para <seguro>
 E calculo o frete para "09560065"
 E eu clico no botao "botao_ConcluirCompra"
 E seleciono o endereco e forma de entrega <tipo>
 Quando escolho o meio de pagamento <forma> em <vezes> parcelas
 Entao valido a finalizacao da compra

Exemplos:
  | garantia    | seguro 		     |   tipo	    |           forma	           | vezes  |
  | "nao"		    | "nao" 		     | "Normal"   | "um_cartao_credito_master" | "1" 	  |
  | "nao" 	   	| "nao" 	       | "Expressa" | "dois_cartoes_credito"     | "1" 	  |
  | "12_meses" 	| "quebra" 		   | "Retira"   | "um_cartao_credito_master" | "2" 	  |
  | "24_meses" 	| "roubo_quebra" | "Agendada" | "um_cartao_credito_master" | "1" 	  |
  | "36_meses" 	| "roubo" 		   | "Normal"   | "um_cartao_credito_master" | "1" 	  |
  | "12_meses" 	| "nao" 		     | "Normal"   | "um_cartao_credito_master" | "2" 	  |
  | "24_meses" 	| "nao" 		     | "Normal"	  | "um_cartao_credito_master" | "1" 	  |
  | "36_meses" 	| "nao" 		     | "Normal"   | "um_cartao_credito_master" | "1" 	  |
  | "nao" 	   	| "quebra" 		   | "Normal"   | "um_cartao_credito_master" | "3" 	  |
  | "nao" 		  | "roubo_quebra" | "Normal"	  | "um_cartao_credito_master" | "1" 	  |
  | "nao" 		  | "roubo" 		   | "Normal"   | "um_cartao_credito_master" | "1" 	  |

@navegando_2_cartoes_normal @compras @ref
Cenario: Realizar a compra de um produto navegando pelo departamento, com o meio de pagamento 2 cartões de credito, recebendo em casa com frete normal e sem garantia e seguro.

  E faço o login com email "valido" e senha "valida" e "limpar" o carrinho
  E eu clico no botao "logo"
  E eu clico no departamento "Games"
  E seleciono o produto desejado com garantia de "12_meses" e seguro para "nao"
  E calculo o frete para "09560065"
  E eu clico no botao "botao_ConcluirCompra"
  E seleciono o endereco e forma de entrega "Normal"
  Quando escolho o meio de pagamento "dois_cartoes_credito_master" em "1" parcelas
  Entao valido a finalizacao da compra

@busca_1_cartao_normal_garantia-carrinho @compras
Cenario: Realizar a compra de um produto por meio de uma busca, com garantia adicionada pelo carrinho, meio de pagamento caartao de credito em 4 vezes e recebendo em casa com o frete normal.

 E faço o login com email "valido" e senha "valida" e "limpar" o carrinho
 E eu clico no botao "logo"
 E realizo a pesquisa "11526479"
 E seleciono o produto desejado com garantia de "nao" e seguro para "nao"
 E eu adiciono a garantia de "12_meses" no carrinho
 E calculo o frete para "09560065"
 E eu clico no botao "botao_ConcluirCompra"
 E seleciono o endereco e forma de entrega "Normal"
 Quando escolho o meio de pagamento "um_cartao_credito_master" em "4" parcelas
 Entao valido a finalizacao da compra

@busca_1_cartao_normal_deslogado @compras
Cenario: Realizar a compra de um produto deslogado por meio de uma busca, com o meio de pagamento cartao de credito, recebendo em casa com o frete normal e sem garantia e seguro.

 E eu clico no botao "logo"
 E realizo a pesquisa "11526479"
 E seleciono o produto desejado com garantia de "nao" e seguro para "nao"
 E calculo o frete para "09560065"
 E eu clico no botao "botao_ConcluirCompra"
 E faço o login com email "valido" e senha "valida" e "não limpar" o carrinho
 E seleciono o endereco e forma de entrega "Normal"
 Quando escolho o meio de pagamento "um_cartao_credito_master" em "1" parcelas
 Entao valido a finalizacao da compra

@login
Esquema do Cenário: Realizar o login com todas possibilidades de insucesso

 Quando faço o login com email <email> e senha <senha> e "não limpar" o carrinho
 Entao valido a mensagem de erro

Exemplos:
 | email	     | senha	    |
 | "incorreto" | "invalida" |
 | "invalido"  | "invalida" |
 | "valido"	   | "invalida" |

#language: pt

Funcionalidade: Validações referentes a tela do identificacao

#21/03 FMDPDT-90 FMDPDT-91
@validarValidoInvalido @cd
Esquema do Cenario: Validar funcionalidade dos campos E-mail e Senha - Valores inválido/Valido
  Dado que acesso a pagina de "login"
  Quando faço o login com email <email> e senha <senha> e "não limpar" o carrinho
  Entao valido a existencia do elemento <elemento>

  Exemplos:
  |    email    |   senha    |      elemento      |
  |  "valido"   |  "valida"  |   "campo_logado"   |
  | "invalido"  | "invalida" | "campo_login_erro" |

#21/03 FMDPDT-92
@validarLimiteCaracEmail @cd
Cenario: Validar campo E-mail Limite de caracteres
  Dado que acesso a pagina de "login"
  Quando eu insiro no campo "campo_email" o valor "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaabbbbbbb"
  Entao valido a existencia de somente "50" caracteres no campo "campo_email"

#FMDPDT-93
@validarLimite
Cenario: Validar campo Senha Limite de caracteres
  Dado que acesso a pagina de "login"
  E eu insiro no campo "campo_senha" o valor "12345678912345678912"
  Quando clico em "campo_informe_email"
  Entao visualizo a exibicao da mensagem "mensagem_senha_invalida" no elemento "label_user_senha_formato_invalido"

#22/03 FMDPDT-94 FMDPADT-101
@validarLink @cd
Esquema do Cenario: Validar funcionalidade do hiperlink Meu e-mail mudou/ Esqueci minha senha
  Dado que acesso a pagina de "login"
  Quando eu clico no botao <link>
  Entao valido a existencia do elemento <elemento>

  Exemplos:
  |                link              |   elemento    |
  |         "link_email_mudou"       | "frame_email_mudou" |
  | "link_esqueci_minha_senha_modal" | "frame_email_mudou" |

#22/03
#FMDPADT-95
@validarFecharModal @cd
Cenario: Validar funcionalidade botão: Fechar
  Dado que acesso a pagina de "login"
  E eu clico no botao "link_email_mudou"
  Quando eu clico dentro do modal "frame_modal" no botao "botao_fechar_modal"
  Entao valido a existencia do elemento "label_dados_login"

#22/03
#FMDPADT-96
@validaContinuarModal @cd
Cenario: Validar funcionalidade botão: Continuar
  Dado que acesso a pagina de "login"
  E eu clico no botao "link_email_mudou"
  Quando eu clico dentro do modal "frame_modal" no botao "botao_continuar_modal"
  Entao visualizo a exibicao da mensagem "mensagem_email_obrigatorio" dentro do modal "frame_modal" no elemento "label_informe_nome"

#22/03
#FMDPADT-97 FMDPADT-98 FMDPADT-99 FMDPADT-100
@validarCamposModal @cd
Esquema do Cenario: Validar funcionalidade campo: Email/Novo email/Senha/Confirme novo Email
  Dado que acesso a pagina de "login"
  Quando eu clico no botao "link_email_mudou"
  Entao que eu insiro dentro do modal "frame_modal" no campo <campo> o valor <tipo>

  Exemplos:
  |            campo             |             tipo             |
  |         "campo_email"        | "guilhermeteste@groove.tech" |
  |      "campo_email_novo"      | "guilhermeteste@groove.tech" |
  |        "campo_senha"         |          "teste2018"         |
  | "campo_confirmar_email_novo" | "guilhermeteste@groove.tech" |

#22/03
#FMDPADT-102
@validarTexto @cd
Cenario: Validar texto: Esqueci minha senha
  Dado que acesso a pagina de "login"
  Quando que eu clico no link "link_esqueci_minha_senha_modal"
  Entao visualizo a exibicao da mensagem "mensagem_esqueci_minha_senha_modal" dentro do modal "frame_modal" no elemento "label_esqueci_minha_senha"

#22/03
#FMDPADT-103
@validarEmailInvalido @cd
Cenario: Validar funcionalidade campo: Email - Inválido
  Dado que acesso a pagina de "login"
  E que eu clico no link "link_esqueci_minha_senha_modal"
  E que eu insiro dentro do modal "frame_modal" no campo "campo_email" o valor "sashaa.com"
  Quando eu clico dentro do modal "frame_modal" no botao "botao_continuar_esqueci_login"
  Entao visualizo a exibicao da mensagem "mensagem_formato_email_invalido" dentro do modal "frame_modal" no elemento "label_email_invalido"

#22/03
# @validarRadioButton @cd
# Cenario: Validar o radio - Não, essa é a minha primeira compra
#   Dado que acesso a pagina de "login"
#   E eu seleciono o radio button "primeiraCompra"
#   E clico em "campo_email"
#   E eu seleciono o radio button "primeiraCompra"
#   Quando eu clico no botao "botao_ContinuarLogin"
#   Entao eu visualizo a pagina "identificacao"

#22/03
#FMDPADT-104
@validarContinuar @cd
Cenario: Validar funcionalidade do botão: Continuar
  Dado que acesso a pagina de "login"
  Quando que estou logado com "usuarioGuilhermeTesteCB"
  # Quando eu clico no botao "botao_ContinuarLogin"
  Entao visualizo meu "nome" no topo da tela inicial

#22/03
#FMDPADT-105 FMDPADT-106 FMDPADT-107
@validaRadio @cd
Esquema do Cenario: Validar botão (radio) - Pessoa Física/Pessoa Juridica e Já tenho cadastro
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  Quando eu clico no botao <opcao>
  Entao visualizo a exibicao da mensagem <msg> no elemento <campo>

  Exemplos:
  |           opcao         |              msg            |           campo          |
  |     "pessoa_fisica"     |   "mensagem_dados_pessoais" |    "campo_meu_perfil"    |
  |    "pessoa_juridica"    |   "mensagem_dados_empresa"  |  "label_pessoa_juridica" |
  |  "botao_tenho_cadastro" |   "mensagem_dados_login"    |    "label_dados_login"   |

#22/03
#FMDPADT-108
@validarDadosValidosCPF @cd
Cenario: Validar funcionalidade em dados Pessoais do campo: CPF - dados Válidos
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  E eu insiro no campo "texto_Cpf" o valor "73488589021"
  Quando eu clico no botao "texto_NomeCompleto"
  Entao valido a existencia do elemento "imagem_campo_valido"

#22/03
#FMDPADT-109
@validarCPF @cd
Cenario: Validar funcionalidade em dados Pessoais do campo: CPF - Limite de dados
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  E eu insiro no campo "texto_Cpf" o valor "11111111111111111111"
  Entao valido a existencia de somente "14" caracteres no campo "texto_Cpf"

#22/03 - CPF/DDD #26/03 - DDD2
#22/03 CPF - FMDPADT-110 DDD - FMDPADT-111
@validarCaracEspeciaisI @cd
Esquema do Cenario: Validar funcionalidade em dados Pessoais do campo: CPF/DDD - Caracter especial
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  Quando eu insiro no campo <texto> o valor <valor>
  Entao valido o texto sem caracter especial <texto>

  Exemplos:
  |       texto       |      valor      |
  |    "texto_Cpf"    |   "@!#@11&¨%%"  |
  | "texto_DddPhone"  |   "@!#@11&¨%%"  |
  | "texto_DddPhone2" |   "@!#@11&¨%%"  |


#22/03 - DDD1/DDD2
#DDD1 - FMDPADT-114 DDD2 - #26/03 FMDPADT-115
@validarDDDvalido @cd
Esquema do Cenario: Validar funcionalidade em dados Pessoais do campo DDD - dados válidos
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  Quando eu insiro no campo <campo> o valor "11"
  Entao valido a existencia do elemento "imagem_DDD_valido"

  Exemplos:
  |      campo        |
  | "texto_DddPhone"  |
  | "texto_DddPhone2" |


#23/03 -DDD #26/03 - Numero/DDD2
#23/03 - DDD - FMDPADT-112
@validarLimiteI @cd
Esquema do Cenario: Validar funcionalidade em dados Pessoais do campo: DDD/Numero - Limite de dados
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  Quando eu insiro no campo <campo> o valor <valor>
  Entao valido a existencia de somente <qtd> caracteres no campo <campo>

  Exemplos:
  |        campo          |       valor         |  qtd |
  |  "texto_DddPhone"     |       "11111"       |  "2" |
  |    "texto_Phone"      |    "11111111111"    |  "9" |
  |   "texto_DddPhone2"   |       "11111"       |  "2" |

#23/03
#FMDPADT-116
@validarNumeroValido @cd
Cenario: Validar funcionalidade em dados Pessoais do campo Número - dados válidos
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  Quando eu insiro no campo "texto_Phone" o valor "111111111"
  Entao valido a existencia do elemento "imagem_numero_valido"

#23/03
#FMDPADT-113
@validarNumeroCE @cd
Cenario: Validar funcionalidade em dados Pessoais do campo: Número - Caracter especial
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  Quando eu insiro no campo "texto_DddPhone" o valor "@#$$41221$@#3145"
  Entao valido o texto sem caracter especial "texto_DddPhone"

#27/03
@isento @cd
Cenario: Validar funcionalidade em dados da Empresa do Checkbox: ISENTO
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  E eu clico no botao "pessoa_juridica"
  Quando eu seleciono o Checkbox "checkbox_pj_isento"
  Entao valido a existencia do elemento "imagem_campo_valido"

#28/03
@optSimples
Cenario: Validar funcionalidade em dados da Empresa do Checkbox: Optante pelo Simples
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  Quando eu clico no botao "pessoa_juridica"
  Entao eu seleciono o Checkbox "check_pj_optante_simples"

#27/03
@confSenhaDadosValidos @cd
Cenario: Validar funcionalidade em dados de acesso do campo: Confirmar Senha - dados válidos
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  E eu clico no botao "pessoa_juridica"
  E eu insiro no campo "campo_senha" o valor "12345"
  Quando eu insiro no campo "texto_conf_senha" o valor "4321"
  E clico em "campo_senha"
  Entao valido a existencia do elemento "imagem_campo_invalido"

#27/03
@limiteCaracConfirmar @cd
Cenario: Validar funcionalidade em dados de acesso do campo: Confirmar Senha - Limite de caracter
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  E eu clico no botao "pessoa_juridica"
  Quando eu insiro no campo "texto_conf_senha" o valor "12468451356723564321"
  E clico em "campo_senha"
  Entao visualizo a exibicao da mensagem "mensagem_conf_senha_invalida" no elemento "label_conf_senha_invalida"

#27/03
@caracEspCnpj @cd
Cenario: Validar funcionalidade em dados da Empresa do campo: CNPJ - Caracter especial
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  E eu clico no botao "pessoa_juridica"
  Quando eu insiro no campo "campo_cnpj" o valor "@!#@11124&¨%%"
  Entao valido o texto sem caracter especial "campo_cnpj"

#27/03
@validoCampo @cd
Esquema do Cenario: Validar funcionalidade em dados da Empresa do campo Razão Social/nome fantasia/Cnpj-Limite de dados
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  E eu clico no botao "pessoa_juridica"
  Quando eu insiro no campo <campo> o valor <valor>
  Entao valido a existencia de somente <qtd> caracteres no campo <campo>

  Exemplos:
  |        campo          |       valor         |  qtd |
  |     "campo_cnpj"      | "12345678912345678" | "14" |
  | "campo_razao_social"  | "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"                                                   | "50"  |
  | "campo_nome_fantasia" | "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa" | "100" |

#27/03
@validoCnpj @cd
Cenario: Validar funcionalidade em dados da Empresa do campo: CNPJ - dados Válidos
  Dado que acesso a pagina de "login"
  E eu seleciono o radio button "primeiraCompra"
  E eu insiro no campo "campo_email" o valor "guilhermeteste1@groove.tech"
  E eu clico no botao "botao_ContinuarLogin"
  E eu clico no botao "pessoa_juridica"
  Quando eu insiro no campo "campo_cnpj" o valor "4321"
  E eu clico no botao "campo_nome_fantasia"
  Entao valido a existencia do elemento "imagem_campo_invalido"

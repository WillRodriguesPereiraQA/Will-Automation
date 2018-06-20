#####Linguagem padrão será Português
#language: pt

####Funcionalidade é onde especificamos o todo que será testado.Ex: Finalização de compra/Cadastro de Usuário.
Funcionalidade: Cadastro de Usuário
 Aqui deve-se descrever ao maximo as regras de negócio dos testes
 que serão executados abaixo, fazendo isso evitamos escrever
 muitos steps. Nosso intuito é deixar o máximo de informação
 nesta descrição a para escrever cenários de teste implicitos



##Contexto em resumo, é onde será inserido um step onde todos os testes abaixo devem passar.
Contexto:
  Dado que estou na tela de cadastro de usuário

##Tags: as tags são utilizadas para "marcar" um ou um conjunto de cenarios/funcionalidade de
## que serão executados separadamente. EX: @faster, @slow, @medium, @critic_scenario
  @faster
##Cenário é o titulo/breve descrição do teste a ser realizado. Pode-se escrever: Cenário ou Cenario.
##Atente-se para o padrão utilizado em seu projeto!
  Cenário: Realizar cadastro, utlizando dados validos para pessoa Fisica
    Quando inserir dados validos no formulario para pessoa fisica
    E clicar no botao "botao_Continuar"
    Entao devo visualizara tela inicial com meu nome no topo da pagina
##No caso acima, foi realizado um validação especifica para o cadastro de um usuário, a mesma
##pode ser utlizada para cadastro de pessoa Juridica.

  Cenário: Realizar cadastro, utlizando dados validos para pessoa Juridica
    Quando inserir dados validos no formulario para pessoa juridica
    E clicar no botao "botao_Continuar"
    Entao devo visualizara tela inicial com meu nome no topo da pagina

## Devemos seguir os seguintes padrões para melhor manutenabilidade do projeto.
## 1 - Sempre 'taguear' os cenários, com tags padrão, @faster, @slow, @critic_scenario, @medium
## 2 - Caso exista uma PBI/estória, acrescentar como comentário acima do Cenário, no formato: #PBI:XXXXX
## 3 - Realizar um 'find' do step que será criado para que possa seguir o mesmo padra e não criar steps
##diferentes que realizam a mesma ação.
## 4 - Atente-se a descição abaixo da 'Funcionalidade', pois ali devemos colocar o máximo de informações
##possíveis para realizar os testes e validações. Mas lembre-se, tudo tem limite!
## 5 - Significado dos termos padroes:
## 5.1 - Dado: Pré condição para realizar as próximas ações.
##http://docbehat.readthedocs.io/pt/v3.1/guides/1.gherkin.html#dado
## 5.2 - Quando: Descreve  a ação em si.
## http://docbehat.readthedocs.io/pt/v3.1/guides/1.gherkin.html#quando
## 5.3 - Então: Validar saida das ações executadas.
##http://docbehat.readthedocs.io/pt/v3.1/guides/1.gherkin.html#entao
## 5.4 - E,Mas: São os passos complementares entre o Dado, Quando e Então.
## http://docbehat.readthedocs.io/pt/v3.1/guides/1.gherkin.html#e-mas

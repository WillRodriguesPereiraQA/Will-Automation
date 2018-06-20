Então("o sistema apresenta modal de móveis planejados, com campos CEP habilitado para impressão") do
  @assertPage.valida_existencia_elemento(EL['modal_moveis_planejados'])
  @common.clicar_inserir_valor('campo_cep_planejados',CEP[:cepValido][:cep])
end

Quando(/^seleciono a cor "([^"]*)"$/) do |opcao|
  opcao = opcao.to_i - 1
  @common.clica_elemento("botao_+_cor")
  find(EL['lista_cores']).all('li')[opcao].click
end

Quando(/^seleciono o acessorio "([^"]*)"$/) do |opcao|
  opcao = opcao.to_i - 1
  @common.clica_elemento("botao_+_acessorio")
  find(EL['lista_acessorios']).all('li')[opcao].click
end

Quando(/^seleciono o tipo de material "([^"]*)"$/) do |opcao|
  opcao = opcao.to_i - 1
  @common.clica_elemento("botao_+_material")
  find(EL['lista_material']).all('li')[opcao].click
end

Dado(/^eu clico no ambiente "([^"]*)"$/) do |ambiente|
  @common.clica_elemento(ambiente)
end

Então("eu faço upload da imagem") do
  @common.upload_imagem_mvp
end

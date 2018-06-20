Dado(/^que eu clico no link "([^"]*)"$/) do |link|
  @common.clica_elemento(link)
end

Quando(/^seleciono a ordenacao da lista por "([^"]*)"$/) do |ordem|
  sleep(6)
    @paginaLojistas.seleciona_ordenacao(ordem)
end

Dado(/^que acesso um produto com a tag "([^"]*)"$/) do |tipo|
  local = DATA["sku"]
  local = local.gsub('bandeira', $site)
  $item = PRODUTO[:tag]
  $item_tipo << $item[eval(":#{tipo}")][0]
  local = local.gsub('sku', $item[eval(":#{tipo}")].sample)
  visit(local)
end


Quando(/^adiciono ele ao carrinho sem garantia$/) do
  @common.adiciona_item_carrinho("normal","nao")
  if has_selector?(EL['botao_ConcluirCompra'], wait: 30)
    find(EL['botao_ConcluirCompra'], wait: 15).click
  else has_selector?(EL['botao_Concluir'], wait: 30)
    find(EL['botao_Concluir'], wait: 30).click
  end

end

Dado(/^eu insiro no campo "([^"]*)" o valor "([^"]*)"$/) do |campo, valor|
  valor == "randomEmail" ? @common.clicar_inserir_valor(campo,eval(MASSA[valor])) : @common.clicar_inserir_valor(campo,valor)
end

Dado("clico no link ver mais conteúdo dos clientes") do
  @common.clica_elemento('link_moveis_planejados_ver_conteudo')
end

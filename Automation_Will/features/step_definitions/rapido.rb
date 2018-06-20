Dado(/^que eu clico no botao "([^"]*)"$/) do |botao|
sleep(2)
  @common.clica_elemento(botao)
end

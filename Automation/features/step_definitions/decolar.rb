Entao(/^visualizo a page "([^"]*)"$/) do |page|
  @assert.check_page(EL[page])
end

Quando(/^eu insiro no campo origem "([^"]*)" e campo destino "([^"]*)"$/) do |origem, destino|
  @common.insert_element(origem, destino)
end

Quando(/^eu seleciono "([^"]*)" e "([^"]*)"$/) do |ida, volta|
  pending # Write code here that turns the phrase above into concrete actions
end

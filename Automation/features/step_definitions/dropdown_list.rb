Dado(/^clico em "([^"]*)"$/) do |clicar|
  @dropdown.clicar_dropdown
end

Entao(/^seleciono "([^"]*)"$/) do |dropdown|
  @dropdown.selecionar_dropdown1
end

Entao(/^eu seleciono "([^"]*)"$/) do |dropdown|
  @dropdown.selecionar_dropdown2
end

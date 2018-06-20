Dado(/^que acesso a pagina "([^"]*)"$/) do |arg1|
  visit(arg1)
  sleep (5)
end

Quando(/^eu insiro o endereco no campo email$/) do
  @login.inserir_email
end

Quando(/^eu insiro a senha do e\-mail$/) do
  @login.inserir_senha_email
end

Quando(/^eu clico em botao "([^"]*)"$/) do |botao|
  @common.click_element(botao)

end

Então(/^visualizo mensagem de erro$/) do
  @login.validar_msg_erro
end

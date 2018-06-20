


Dado(/^que acesso a pagina de "([^"]*)"$/) do |arg1|
visit(arg1)
end

Dado(/^insiro o endereco no campo email$/) do
 find('#i0116').set("wfix_pereira@hotmail.com")
end

Dado(/^clico em proximo$/) do
 find('#idSIButton9').click


Quando(/^insiro a senha do e\-mail$/) do
  find('#i0118').set("12345")
end

Então(/^clico em sign$/) do
  find('#idSIButton9').click
end
end

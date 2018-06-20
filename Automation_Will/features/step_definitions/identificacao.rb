# encoding: utf-8

# Entao(/^eu preencho o "([^"]*)" do modal$/) do |dados|
#   within_frame(EL['frame_modal']) do
#     campo = [EL["campo_email"], El["campo_senha"],
#     EL["campo_email_novo"], EL["campo_confirmar_email_novo"]]
#     dados = REGISTRO[:"#{dados}"]
#     valor = [dados[:email],dados[:senha],dados[:novo_email],dados[:confirme_email]]
#     dados = Hash[campo.zip(valor)]
#     dados.each do |campo, valor|
#     find(campo).set(valor)
#     end
#   end
# end

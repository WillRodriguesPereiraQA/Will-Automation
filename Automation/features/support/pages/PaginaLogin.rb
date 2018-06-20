class PaginaLogin

  #include RSpec::Matchers
  include Capybara::DSL

  def inserir_email
    find('#username').set("wfix_pereira@hotmail.com")
  end

  def inserir_senha_email
    find('#password').set("12345")
  end

  def clicar_login
    find('.radius').click
  end

  def validar_msg_erro
    find('#flash').click
  end

end

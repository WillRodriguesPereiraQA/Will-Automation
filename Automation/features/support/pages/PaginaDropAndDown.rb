class PaginaDropAndDown

  #include RSpec::Matchers
  include Capybara::DSL

  def clicar_dropdown
    find('#dropdown').click
  end

  def selecionar_dropdown1
    find('#dropdown').find(:xpath, 'option[2]').select_option
  end

  def selecionar_dropdown2
    find('#dropdown').find(:xpath, 'option[3]').select_option
  end
end

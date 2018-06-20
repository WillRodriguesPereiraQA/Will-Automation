class PaginaCommon

  #include RSpec::Matchers
  include Capybara::DSL

  def click_element(botao,index=0)
    find(EL[botao], wait: 10).click
    end

  def insert_element(campo)
    find(EL[campo], wait: 10).set("sao")
  
    end

  end

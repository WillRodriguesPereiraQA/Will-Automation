class PaginaAssert

  #include RSpec::Matchers
  include Capybara::DSL

  def check_page(elemento)
    if assert_selector(elemento, wait:15)
      p "Elemento (#{elemento}) localizado com sucesso na página"
    else
      raise "Elemento (#{elemento}) não foi localizado na página"
    end
   end

  end

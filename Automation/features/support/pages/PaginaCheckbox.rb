class PaginaCheckbox

  #include RSpec::Matchers
  include Capybara::DSL

def valida_checkbox
  within('#checkboxes') do
   verifica = all('input', :visible => false)[1].checked?
   if verifica == false
puts
     raise('Check Box Selecionado')
  end
 end
end
end

class PaginaFileUploader

  #include RSpec::Matchers
  include Capybara::DSL

  def clicar_dropdown
    find('#dropdown').click
  end
end

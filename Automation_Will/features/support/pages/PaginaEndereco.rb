class PaginaEndereco

  include RSpec::Matchers
  include Capybara::DSL

    def cadastrar_endereco_responsivo(novo_cliente)
        Common.new.aguardar_load_responsivo
        assert_selector(EL['combo_tipo_endereco_r'], visible: true, wait: 10)
        find(EL['combo_tipo_endereco_r']).all(:option, novo_cliente['tipo_endereco'])[0].select_option
        find(EL['texto_id_endereco_r']).set novo_cliente['name']
        find(EL['texrue to_nome_destinatario_r']).set novo_cliente['name']
        find(EL['texto_cep_r']).set novo_cliente['cep']
        Common.new.aguardar_load_responsivo
        find(EL['texto_numero_r']).set novo_cliente['numero']
        find(EL['texto_ponto_referencia_r']).set novo_cliente['ref']
        Common.new.clicar_botao_continuar_responsivo
    end

  def cadastra_endereco_sucesso
    sleep(4)
    assert_selector(EL['identificao_end'], wait: 15, visible:true)
    find(EL['identificao_end']).set("casa")
    find(EL['nome_destinatario']).set(eval(MASSA['fullName']))
    find(EL['texto_cep_carrinho']).set("09520010")
    find(EL['ponto_referencia']).set("sao caetano do sul")
    sleep(1)
    find(EL['numero_casa']).set("1234")
    find(EL['botao_Continuar']).click
  end
end

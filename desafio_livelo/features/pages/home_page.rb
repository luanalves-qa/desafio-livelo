class HomePage < SitePrism::Page
    set_url ''

    element :campo_busca, '#input-search'
    element :bt_pesquisa, '#span-searchIcon'

    def clicar_menu
        find('#li-first-level-menu-1').click
        find('#span-second-level-menu-1-1').click
        find('#span-third-level-menu-1-1-1').click       
    end

    def efetuar_busca(nome_produto)
        campo_busca.send_keys(nome_produto)
        bt_pesquisa.click
    end

end
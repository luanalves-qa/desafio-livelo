class ProductPage < SitePrism::Page

    element :bt_add_cart, '#CC-prodDetails-addToCart > button'
    element :nome_produto, '#wi4300078-product-header-info-catalog-id > div > h2'

    def adicionar_ao_carrinho
        bt_add_cart.click
    end

    def txt
        @nome_produto_armazenado = nome_produto.text
    end

    def seleciona_voltagem
        find('#CC-prodDetails-sku-type_other_v_voltage').click
        find('#\#option-2').click
    end
end
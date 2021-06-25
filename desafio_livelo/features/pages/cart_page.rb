class CartPage < SitePrism::Page
    element :nome_produto_cart, '.cart-list__prodinfo > a'
    element :bt_limpa_cart, '#cc-cart-item-0 > div.cart-list__prodquantity > a'
    element :bt_add_produto, '.cart-list__quantity-box > span:nth-child(3)'
    element :total_produtos, '.cart-list__quantity-box > span:nth-child(2)'

    def txt
        @nome_produto_armazenado_cart = nome_produto_cart.text
    end

    def limpa_carrinho
        bt_limpa_cart.click
    end

    def validar_carrinho_vazio
        assert_text('Ainda não existem itens no seu carrinho')
    end

    def adiciona_produto
        bt_add_produto.click
    end

end
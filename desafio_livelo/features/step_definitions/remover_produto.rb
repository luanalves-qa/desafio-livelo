Dado('que tenho estou na tela de carrinho com produto adicionado') do
    @home = HomePage.new
    @category = CategoryPage.new
    @product = ProductPage.new

    @home.load
    @home.clicar_menu
    
    @category.selecionar_primeiro_item
    
    @product.adicionar_ao_carrinho
  end
  
  Quando('limpar todo o carrinho') do
    @cart = CartPage.new
    @cart.limpa_carrinho
  end
  
  Entao('o carrinho deve ficar vazio') do
    @cart = CartPage.new
    @cart.validar_carrinho_vazio
  end

  Quando('clicar no botao para adicionar uma unidade') do
    @cart = CartPage.new
    @cart.adiciona_produto
  end
  
  Entao('o total de itens no carrinho deve ser {int} unidades') do |total_unidades|
    expect(page.has_xpath?(".//div[@class='cart-list__quantity-box']//span", text: '{total_unidades}'))
  end

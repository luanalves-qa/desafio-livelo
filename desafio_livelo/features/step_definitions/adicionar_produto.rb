Dado('que estou na pagina home') do
    @home = HomePage.new
    @home.load
end

Quando('eu acesso a tela de itens da categoria casa') do
    @home.clicar_menu
end

Quando('seleciono o primeiro produto da tela') do
    @category = CategoryPage.new
    @category.selecionar_primeiro_item
end

Quando('clico para adicionar o produto ao carrinho') do
    @product = ProductPage.new
    @product.adicionar_ao_carrinho
end

Entao('na pagina de carrinho apresenta o produto selecionado anteriormente') do
    @cart = CartPage.new
    expect(@product.txt).to eq (@cart.txt)
end

Quando('eu pesquiso pelo item {string}') do |item|
    @home.efetuar_busca(item)
end

Quando('seleciono a voltagem 110v do produto') do
    @product = ProductPage.new
    @product.seleciona_voltagem
end

Entao('o botao para adicionar o item ao carrinho nao e habilitado') do
    page.has_no_button?('#cc-prodDetails-addToCart')
end
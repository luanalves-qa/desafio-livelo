#language: pt

Funcionalidade: Adicionar produto ao carrinho

    Cenario: Adicionar um produto sem especificacao ao carrinho
        Dado que estou na pagina home
        Quando eu acesso a tela de itens da categoria casa
        E seleciono o primeiro produto da tela
        E clico para adicionar o produto ao carrinho
        Entao na pagina de carrinho apresenta o produto selecionado anteriormente

    Cenario: Adicionar um produto com especificacao ao carrinho utilizando a busca
        Dado que estou na pagina home
        Quando eu pesquiso pelo item 'Cafeteira Eletrica'
        E seleciono o primeiro produto da tela
        E seleciono a voltagem 110v do produto
        E clico para adicionar o produto ao carrinho
        Entao na pagina de carrinho apresenta o produto selecionado anteriormente

    Cenario: Item nao adiciona ao carrinho sem escolher especificacao
        Dado que estou na pagina home
        Quando eu pesquiso pelo item 'Cafeteira Eletrica'
        E seleciono o primeiro produto da tela
        Entao o botao para adicionar o item ao carrinho nao e habilitado
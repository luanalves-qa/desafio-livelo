#language: pt

Funcionalidade: Acoes dentro do carrinho

    Contexto: 
        Dado que tenho estou na tela de carrinho com produto adicionado

    Cenario: Limpar o carrinho de compras de uma vez
        Quando limpar todo o carrinho
        Entao o carrinho deve ficar vazio

    Cenario: Validar adicao de produto diretamente carrinho
        Quando clicar no botao para adicionar uma unidade
        Entao o total de itens no carrinho deve ser 2 unidades
        
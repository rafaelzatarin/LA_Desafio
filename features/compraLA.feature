#language: pt

Funcionalidade: Simulação de uma compra
	Como um usuário, gostaria de realizar uma compra em um grande portal de comércio online
    Tendo a possibilidade de adicionar e remover os produtos no carrinho até decidir o produto que desejo comprar.

    @acesso
    Cenario: Acesso ao portal na LA e busca de Produto invalido
        Dado que acesso o portal das lojas americanas
        Quando pesquiso "esmartfone"
        Entao retorna mensagem de "Ops! nenhum resultado encontrado para"
    
    @busca
    Cenario: Acesso ao portal na LA, busco Produto e adiciona no carrinho
        Dado que acesso o portal das lojas americanas
        Quando pesquiso "celular xiaomi" 
        Então realizo a escolha do produto para ver os detalhes 
        E valido o produto no carrinho

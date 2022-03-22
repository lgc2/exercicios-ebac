            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu esteja no site da EBAC-SHOP

            Cenário: Selecionar cor, tamanho e quantidade do produto
            Quando eu acessar a página do produto Augusta Pullover Jacket
            E selecionar o tamanho S
            E selecionar a cor Orange
            E adicionar 2 unidades
            Então estarei apto a adicioná-lo no carrinho

            Esquema do Cenário: Adicionar quantidade válida de produtos
            Quando eu acessar a página de um certo produto
            Então adicionarei <quantidade> produtos ao carrinho

            Exemplos:
            | quantidade |
            | 9          |
            | 10         |

            Cenário: Selecionar quantidade inválida de produtos
            Quando eu acessar a página de um certo produto
            E selecionar 11 produtos no campo quantidade
            Então o sistema não permitirá que eu adicione este produto ao carrinho

            Cenário: Clicar no botão Limpar
            Quando eu acessar a página de um certo produto
            E alterar os campos de cor, tamanho e quantidade
            E depois clicar no botão Limpar
            Então estes campos devem voltar ao estado original
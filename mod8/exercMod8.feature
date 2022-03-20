            #language: pt

            Funcionalidade: Configurar produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu esteja no site da EBAC-SHOP

            Cenário: Selecionar cor, tamanho e quantidade do produto
            Quando eu acessar a página de um certo produto
            Então serei obrigado, antes de adicioná-lo ao carrinho, a selecionar a cor
            E o tamanho
            E a quantidade desejada do produto

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

            # =============================================================================================================

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que acesse o site da EBAC-SHOP
            E posteriormente a página de login

            Cenário: Fazer login
            Quando eu inserir o usuário "usuarioValido@ebac.com.br"
            E a senha "senhaCorreta123"
            Então serei redirecionado para a tela de checkout

            Esquema do Cenário: Tentar realizar login com dados inválidos
            Quando eu inserir o usuário <usuario>
            E a senha <senha>
            Então me será exibida a mensagem <mensagem>

            Exemplos:
            | usuario                       | senha               | mensagem                     |
            | "usuarioInvalido@ebac.com.br" | "senhaCorreta123"   | "Usuário ou senha inválidos" |
            | "usuarioValido@ebac.com.br"   | "senhaIncorreta123" | "Usuário ou senha inválidos" |
            | "usuarioInvalido@ebac.com.br" | "senhaIncorreta123" | "Usuário ou senha inválidos" |

            # =============================================================================================================

            
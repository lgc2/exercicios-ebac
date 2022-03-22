            #language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que acesse o site da EBAC-SHOP
            E posteriormente a página de login

            Cenário: Fazer login
            Quando eu inserir o usuário "usuariovalido@ebac.com.br"
            E a senha "senhaCorreta123"
            Então serei redirecionado para a tela de checkout

            Esquema do Cenário: Tentar realizar login com dados inválidos
            Quando eu inserir o usuário <usuario>
            E a senha <senha>
            Então me será exibida a mensagem <mensagem>

            Exemplos:
            | usuario                             | senha               | mensagem                     |
            | "usuarioinvalido@iiasuhiauh.com.br" | "senhaCorreta123"   | "Usuário ou senha inválidos" |
            | "usuariovalido@ebac.com.br"         | "senhaIncorreta123" | "Usuário ou senha inválidos" |
            | "usuarioinvalido@iiasuhiauh.com.br" | "senhaIncorreta123" | "Usuário ou senha inválidos" |
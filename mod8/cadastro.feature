            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero fazer meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu tenha adicionado um produto no carrinho do site da EBAC-SHOP
            E ainda não tenha cadastro no sitema da EBAC

            Cenário: Concluir cadastro preeenchendo apenas campos obrigatórios
            Quando eu clicar para finalizar a compra
            E após o redirecionamento para a tela de cadastro, preencher os seguintes dados:
            | nome   | sobrenome | pais     | endereco            | cidade    | cep         | telefone        | enderecoEmail              |
            | "João" | "Torres"  | "Brasil" | "Benjamin Constant" | "Itajubá" | "37500-000" | "(35)333333333" | "emailValido@valid.com.br" |
            Então estarei apto a concluir minha compra

            Cenário: Preencher endereço de e-mail inválido no cadastro
            Quando eu clicar para finalizar a compra
            E após o redirecionamento para a tela de cadastro, preencher o campo Endereço de e-mail com o dado: "emailinvalido@invalido.com.b"
            Então o sistema emitirá uma mensagem de erro

            Cenário: Tentar cadastrar com campos obrigatórios vazios
            Quando eu clicar para finalizar a compra
            E após o redirecionamento para a tela de cadastro, preencher os seguintes dados:
            | nome   | sobrenome | pais     | endereco            | cidade    | cep         | telefone        | enderecoEmail              |
            | ""     | "Torres"  | "Brasil" | "Benjamin Constant" | "Itajubá" | "37500-000" | "(35)333333333" | "emailValido@valid.com.br" |
            | "João" | ""        | "Brasil" | "Benjamin Constant" | "Itajubá" | "37500-000" | "(35)333333333" | "emailValido@valid.com.br" |
            | "João" | "Torres"  | ""       | "Benjamin Constant" | "Itajubá" | "37500-000" | "(35)333333333" | "emailValido@valid.com.br" |
            | "João" | "Torres"  | "Brasil" | ""                  | "Itajubá" | "37500-000" | "(35)333333333" | "emailValido@valid.com.br" |
            | "João" | "Torres"  | "Brasil" | "Benjamin Constant" | ""        | "37500-000" | "(35)333333333" | "emailValido@valid.com.br" |
            | "João" | "Torres"  | "Brasil" | "Benjamin Constant" | "Itajubá" | ""          | "(35)333333333" | "emailValido@valid.com.br" |
            | "João" | "Torres"  | "Brasil" | "Benjamin Constant" | "Itajubá" | "37500-000" | ""              | "emailValido@valid.com.br" |
            | "João" | "Torres"  | "Brasil" | "Benjamin Constant" | "Itajubá" | "37500-000" | "(35)333333333" | ""                         |
Então o sistema exibirá uma mensagem de alerta
E não terei sucesso no cadastro
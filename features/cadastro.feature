#language: pt

Funcionalidade: Cadastro de Usuárioss
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

@happy
Cenario: Cadastro
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
    | email          | giovani@teste.com |
    | senha          | pwd123654         |
    | senha_confirma | pwd123654         |
    Então devo ser redirecionado para a área logada
@temp
Cenario: Email não informado
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
    | email          |  |
    | senha          | pwd123654         |
    | senha_confirma | pwd123654         |
    Então devo ver a mensagem: 'Oops! Informe seu email.'

Cenario: Senha não informado
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
    | email          | giovani@teste.com  |
    | senha          |                    |
    | senha_confirma |                    |
    Então devo ver a mensagem: 'Oops! Informe sua senha.'

Cenario: Senha Divergente
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
    | email          | giovani@teste.com  |
    | senha          | pwd123456          |
    | senha_confirma | pwd123654          |
    Então devo ver a mensagem: 'Oops! Senhas não são iguais.'

Cenario: Nenhum campo preenchido
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
    | email          |           |
    | senha          |           |
    | senha_confirma |           |
    Então devo ver a mensagem: 'Oops! Informe seu email e sua senha.'

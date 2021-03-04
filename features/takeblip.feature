#language: pt

Funcionalidade: Login
    
Cenario: Fazer Login
Dado que o usuario visite o site
Quando eu faço o login com "pablodie@gmail.com" e "teste123"
Entao login concluido com a mensagem "Login e/ou senha inválidos"

Cenario: Fazer login usando Google
Dado que o usuario esta no site
Quando eu clico no botao do Google
Entao faco o login "eu@eu.com"

Cenario: Clicar em Esquecer a senha
Dado que estou do site de login
Quando eu clico no botao de Esqueceu a senha
Entao Digito o email "eu@eu.com" e recebo o lembrete de senha

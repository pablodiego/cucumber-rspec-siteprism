loginpage =  Login.new
cadastro = Cadastro.new

Dado('que o usuario visite o site') do
  loginpage.load
end

Quando('eu faço o login com {string} e {string}') do |email, password|
  loginpage.exec_login(email, password)
end

Entao('login concluido com a mensagem {string}') do |string|
  expect(page).to have_content "Login e/ou senha inválidos"
end


Dado('que o usuario esta no site') do
  loginpage.load # Write code here that turns the phrase above into concrete actions
end

Quando('eu clico no botao do Google') do
  loginpage.login_google # Write code here that turns the phrase above into concrete actions
end

Entao('faco o login {string}') do |identifierId|
  loginpage.login_email_google(identifierId)#expect(page).to have_content "Teste" # Write code here that turns the phrase above into concrete actions
end

Dado('que estou do site de login') do
  loginpage.load # Write code here that turns the phrase above into concrete actions
end

Quando('eu clico no botao de Esqueceu a senha') do
  loginpage.login_forgot # Write code here that turns the phrase above into concrete actions
end

Entao('Digito o email {string} e recebo o lembrete de senha') do |email|
  cadastro.typing_email(email)
  find('#submitButton').click
  expect(page).to have_content "Enviamos um email para e****u@eu.com Se você não receber a mensagem em cerca de 5 minutos, clique no botão abaixo para reenviá-la" # Write code here that turns the phrase above into concrete actions
end
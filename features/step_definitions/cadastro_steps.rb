loginpage = Login.new
cadastro = Cadastro.new

Dado('que o usuario visita o site de cadastro') do
    loginpage.load
    find('#blip-register').click
  end
  
  Quando('eu faco o cadastro com {string}, {string}, {string}, {string}, {string}') do |name, email , password, phone, company|
    cadastro.cadastra(name, email , password, phone, company)
  end
  
  Entao('clico no botao') do
    page.has_checked_field?('true')
    find("input['type=checkbox']").set(true)
  end
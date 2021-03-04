class Cadastro < SitePrism::Page
    element :input_email, '#Email'
    element :input_username, '#Username'
    element :input_passw, '#Password'
    element :botao_cadastrar, 'button[type=submit]'
    element :input_name, '#FullName'
    element :input_phone, '#PhoneNumber'
    element :input_company, '#CompanySite'
    element :botao_checkbox, 'button[type=checkbox]'
    element :botao_cadastrar, 'button[type=submit]'

    def cadastra(name, email , password, phone, company)
        input_name.send_keys(name)
        input_email.send_keys(email)
        input_passw.send_keys(password)
        input_phone.send_keys(phone)
        input_company.send_keys(company)
    end

    def typing_email(email)
        input_email.send_keys(email)
    end
end
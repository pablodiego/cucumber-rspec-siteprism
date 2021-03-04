
class Login < SitePrism::Page
    set_url "https://account.blip.ai/login"
    element :input_email, '#email'
    element :input_passw, '#password'
    element :input_email_google, '#identifierId'
    element :botao_cadastrar, 'button[type=submit]'
    element :botao_proxima,  'button[type=submit]'


    def exec_login(email, password)
        input_email.send_keys(email)
        input_passw.send_keys(password)
        click_button "Entrar"
    end

    def login_google    
        find('#blip-login-with-google').click
    end

    def login_forgot
        find('#login-forgot-password').click
    end

    def login_email_google(identifierId)
        input_email_google.send_keys(identifierId)
        click_button "Próxima"
    end

end


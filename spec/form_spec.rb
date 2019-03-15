describe 'Form' do

    
    it 'senha incorreta' do

        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'teste!'
        click_button 'Login'

    end

    it 'usuário não cadastrado' do

        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'teste'
        fill_in 'password', with: 'teste!'
        click_button 'Login'

    end 

    it 'login com sucesso' do

        visit 'https://training-wheels-protocol.herokuapp.com/login'

        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        click_button 'Login'

        #puts find("#flash").visible?
        
        expect(find('#flash').visible?).to be true
        expect(find('#flash').text).to include "Olá, Tony Stark. Você acessou a área logada!"
        expect(find('#flash')).to have_content "Olá, Tony Stark. Você acessou a área logada!"
    end
end



# describe 'Form' do

#     it 'senha incorreta' do
#         visit 'https://www.facebook.com/'
#         fill_in 'email', with: 'debe_nx_@hotmail.com'
#         fill_in 'pass', with: '123456'
#         click_button 'Entrar'
#     end

#     it 'usuário não cadastrado' do
#         visit 'https://www.facebook.com/'
#         fill_in 'email', with: 'debora.mendes@iteris.com.br'
#         fill_in 'pass', with: '123456'
#         click_button 'Entrar'

#     end

#     it 'login com sucesso' do

#             visit 'https://www.facebook.com/'
    
#             fill_in 'email', with: 'debe_nx_@hotmail.com'
#             fill_in 'pass', with: ''
#             click_button 'Entrar'
    
#         end


# end



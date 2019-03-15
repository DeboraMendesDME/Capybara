require 'selenium/webdriver'
require 'chromedriver-helper'

describe 'meu primeiro script' do

    it 'visitar a página' do

        visit 'https://training-wheels-protocol.herokuapp.com/'   
        expect(page.title).to eql "Training Wheels Protocol"
            
    end

end


# require 'selenium/webdriver'
# require 'chromedriver-helper'

# describe 'meu primeiro script' do

#     it 'visitar a página' do

#         visit 'https://www.facebook.com/'   
#         expect(page.title).to eql "Facebook – entre ou cadastre-se"

            
#     end

# end


describe 'caixa de seleçao' do

    before(:each)  do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

    it 'marcando uma opçao' do
        check('thor')
    end

    it 'desmarcar uma opçao' do
        uncheck('antman')
    
    end

    it 'marcando com find set true' do
        find('input[value=guardians]').set(false)

    end 

    after(:each) do
        sleep 3

    end

end


describe 'Caixa de opçoes', :dropdown do 

    it 'Item especifico simples' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: "dropdown")
        sleep 3 #temporário
    end
 
    it 'item especifico com find' do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.find('option', text:'Scott Lang').select_option
        sleep 3 #temporário

    end

    it 'qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end
end

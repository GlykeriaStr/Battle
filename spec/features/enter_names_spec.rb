feature 'entering names' do 
    scenario 'allow two players to enter their names' do 
        visit('/')
        fill_in('player_1_name', with: 'Morne')
        fill_in('player_2_name', with: 'Meg')
        click_button 'Submit'
        expect(page).to have_content 'Morne vs. Meg'
    end 
end 
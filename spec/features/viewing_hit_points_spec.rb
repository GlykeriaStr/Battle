feature 'viewing hit points' do 
    scenario 'display hit points for players' do 
        visit('/')
        fill_in('player_1_name', with: 'Boris')
        fill_in('player_2_name', with: 'Nicola')
        click_button 'Submit'
        expect(page).to have_content '60 HP'
    end 
end 
feature 'entering names' do
    scenario 'allow two players to enter their names' do
        sign_in_and_play
        expect(page).to have_content 'Peter vs. Emma'
    end
end

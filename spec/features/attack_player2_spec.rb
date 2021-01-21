feature 'attack player 2' do
    scenario 'allow player1 to kill player2 and get confirmation message' do
        sign_in_and_play
        click_link 'Attack'
        expect(page).to have_content 'Boris attacked Nicola'
    end
end

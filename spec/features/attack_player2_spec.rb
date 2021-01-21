feature 'attack player 2' do
    scenario 'allow player1 to kill player2 and get confirmation message' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Player 1 attacking Player 2'
    end
end
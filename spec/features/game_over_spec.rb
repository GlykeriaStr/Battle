feature 'Game over' do
  context 'when Player 2 reaches 0 HP first' do
    before do
      sign_in_and_play
      10.times{ attack_ok } 
    end

    scenario 'Player 2 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Emma loses!'
    end
  end
end

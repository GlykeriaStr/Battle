feature 'Attacking' do
  # 'attack Player 2' scenario omitted

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    expect(page).not_to have_content 'Nicola: 60HP'
    expect(page).to have_content 'Nicola: 50HP'
  end
end

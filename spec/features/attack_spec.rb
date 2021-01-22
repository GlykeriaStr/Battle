
feature 'Attacking' do
  scenario 'confirmation of attack' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Peter attacked Emma'
  end

  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    attack_ok
    expect(page).not_to have_content 'Emma: 60HP'
    expect(page).to have_content 'Emma: 50HP'
  end

  scenario 'reduce Player 1 HP by 10' do
    sign_in_and_play
    attack_ok
    click_link 'Attack'
    expect(page).to have_content 'Emma attacked Peter'
  end
end

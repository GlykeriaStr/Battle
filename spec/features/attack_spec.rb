
feature 'Attacking player 2' do
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
end

# As Player 1,
# So I can lose a game of Battle,
# I want Player 2 to attack me, and I want to get a confirmation
feature 'Attacking Player 1' do
  scenario 'confirmation of attack' do
    sign_in_and_play
    attack_ok
    click_link 'Attack'
    expect(page).to have_content 'Emma attacked Peter'
  end

  # As Player 1,
   # So I can start to lose a game of Battle,
   # I want Player 2's attack to reduce my HP by 10
   scenario 'reduce player 1 HP by 10' do
     sign_in_and_play
     attack_ok
     attack_ok
     expect(page).not_to have_content 'Peter: 60HP'
     expect(page).to have_content 'Peter: 50HP'
   end
end

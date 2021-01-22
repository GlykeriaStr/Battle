def sign_in_and_play
  visit('/')
  fill_in('player_1_name', with: 'Boris')
  fill_in('player_2_name', with: 'Nicola')
  click_button "Let's Battle!"
end

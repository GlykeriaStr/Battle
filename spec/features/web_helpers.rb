def sign_in_and_play
  visit('/')
  fill_in('player_1_name', with: 'Peter')
  fill_in('player_2_name', with: 'Emma')
  click_button "Let's Battle!"
end

def attack_ok
  click_link 'Attack'
  click_button 'OK'
end

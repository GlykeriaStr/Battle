feature 'players to switch turns' do
  scenario "when one has attacked, it's the other player's turn" do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    expect(page).to have_content "Nicola's turn!"
  end
end

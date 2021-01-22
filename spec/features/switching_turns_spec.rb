feature 'players to switch turns' do
  scenario "when one has attacked, it's the other player's turn" do
    sign_in_and_play
    attack_ok
    expect(page).to have_content "Emma's turn!"
  end
end

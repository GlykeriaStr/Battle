# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points
feature 'viewing hit points' do
    scenario 'display hit points for players' do
        sign_in_and_play
        expect(page).to have_content 'Peter: 60HP'
        expect(page).to have_content 'Emma: 60HP'
    end
end

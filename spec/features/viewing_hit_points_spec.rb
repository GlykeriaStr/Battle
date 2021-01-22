feature 'viewing hit points' do
    scenario 'display hit points for players' do
        sign_in_and_play
        expect(page).to have_content 'Peter: 60HP'
        expect(page).to have_content 'Emma: 60HP'
    end
end

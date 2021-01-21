feature 'viewing hit points' do
    scenario 'display hit points for players' do
        sign_in_and_play
        expect(page).to have_content 'Nicola: 60HP'
    end
end

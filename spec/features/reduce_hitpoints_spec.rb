feature 'reduce player hp by 10 when attached' do
    scenario 'recuce hp by 10 upon attack' do
        sign_in_and_play
        click_link 'Attack'
        expect(page).not_to have_content 'Emma: 60HP'
        expect(page).to have_content 'Emma: 50HP'
    end
end

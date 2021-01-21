feature 'reduce player hp by 10 when attached' do
    scenario 'recuce hp by 10 upon attack' do
        sign_in_and_play
        click_link 'Attack'
        expect(page).to have_content 'Nicola HP = 50'
    end
end
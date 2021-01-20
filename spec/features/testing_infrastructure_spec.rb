# feature 'testing infrastructure' do 
#     scenario 'Can run app and check page content' do
#         visit('/') 
#         expect(page).to have_content 'Testing infrastructure working!'
#     end 
# end 

feature 'entering names' do 
    scenario 'allow two players to enter their names' do 
        visit('/')
        fill_in('player_1_name', with: 'Morne')
        fill_in('player_2_name', with: 'Meg')
        click_button 'Submit'

    end 
end 
# feature 'reduce player hp by 10 when attached' do
#     scenario 'reduce hp by 10 upon attack on player 2' do
#         sign_in_and_play
#         click_link 'Attack'
#         expect(page).not_to have_content 'Emma: 60HP'
#         expect(page).to have_content 'Emma: 50HP'
#     end
#
#     # scenario 'reduce hp by 10 upon attack on player 1' do
#     #   sign_in_and_play
#     #   attack_ok
#     #   click_link 'Attack'
#     #   expect(page).not_to have_content 'Peter: 60HP'
#     #   expect(page).to have_content 'Peter: 50HP'
#     # end
# end

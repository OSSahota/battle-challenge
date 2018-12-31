feature 'Enter names' do
  scenario 'entering and submitting player 1 & 2 names' do
    visit '/'
    fill_in 'player_1_name', with: 'Dave'
    fill_in 'player_2_name', with: 'Mittens'
    click_button 'Submit'
   expect(page).to have_content 'Dave vs. Mittens'
  end
end

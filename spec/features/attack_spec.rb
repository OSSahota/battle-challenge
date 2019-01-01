feature 'Attack player' do
  scenario 'Attacking player 2' do
    sign_in_and_play
    # click_link 'Attack'
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end
end

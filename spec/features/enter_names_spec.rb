feature 'Enter names' do
  scenario 'entering and submitting player 1 & 2 names' do
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

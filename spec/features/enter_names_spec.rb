feature 'Enter names' do
  scenario 'entering and submitting player 1 & 2 names' do
    p '*****enter_name_spec*****'
    sign_in_and_play
    expect(page).to have_content 'Dave vs. Mittens'
  end
end

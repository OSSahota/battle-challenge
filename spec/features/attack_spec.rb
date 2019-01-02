feature 'Attack player' do
  scenario 'Attacking player 2' do
    p '*****attack_spec - attacking player 2*****'
    sign_in_and_play
    # click_link 'Attack'
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario 'Reducing player 2 hit points by 10' do
    p '*****attack_spec - reducing player 2 hit points by 10*****'
    sign_in_and_play
    click_button 'Attack'
    # expect(page).to have_content 'Dave attacked Mittens'
    click_link 'OK'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end

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
    # click_link 'OK'
    click_button 'OK'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end

  scenario 'Attacking player 1' do
    sign_in_and_play
    click_button 'Attack'
    # click_link 'OK'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content 'Mittens attacked Dave'
  end

  scenario 'Reducing player 1 hit points by 10' do
    sign_in_and_play
    click_button 'Attack' #p1 turn to attack first
    click_button 'OK'     #p1 clicks OK after attack to return to play.erb view page
    click_button 'Attack' #p2 turn to attack first
    click_button 'OK'     #p2 clicks OK after attack to return to play.erb view page
    # expect to see p1's HP down by 10 to 50HP
    expect(page).not_to have_content 'Dave: 60HP'
    expect(page).to have_content 'Dave: 50HP'
  end
end

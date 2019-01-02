  feature 'seeing the current turn' do
    scenario 'at the start of the game' do
      p '*****switch turns spec - at the start of the game*****'
      sign_in_and_play
      expect(page).to have_content "Dave's turn"
    end

    scenario 'after player 1 attacks' do
      p '*****switch turns spec - after player 1 attacks*****'
      sign_in_and_play
      click_button 'Attack'
      click_button 'OK' # click_link 'OK'
      expect(page).not_to have_content "Dave's turn"
      expect(page).to have_content "Mittens's turn"
    end
  end

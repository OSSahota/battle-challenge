feature 'View hit points' do
  scenario 'Viewing player 2 hit points' do
    p '*****hit_points_spec-viewing player 2 hit points*****'
    sign_in_and_play
    expect(page).to have_content "Mittens: 60HP"
  end

  scenario 'Viewing player 1 hit points' do
    p '*****hit_points_spec-viewing player 1 hit points*****'
    sign_in_and_play
    expect(page).to have_content "Dave: 60HP"
  end
end

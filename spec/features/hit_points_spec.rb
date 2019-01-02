feature 'View hit points' do
  scenario 'Viewing player 2 hit points' do
    p '*****hit_points_spec*****'
    sign_in_and_play
    expect(page).to have_content "Mittens: 60HP"
  end
end

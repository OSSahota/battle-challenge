feature 'Game over' do
  context 'when player 1 reaches 0HP first' do
    # These events are actioned BEFORE the first scenario.
    # Different to walk through (WT) as WT code was returning RSpec error.
    # This code works but not sure if best way to do it.
    before do
      sign_in_and_play
      # attack_and_confirm
      # allow(Kernel).to receive(:rand).and_return(60)
      10.times { attack_and_confirm }
    end

    scenario 'Player 1 loses' do
      click_button 'Attack'
      expect(page).to have_content 'Mittens loses!'
    end
  end
end

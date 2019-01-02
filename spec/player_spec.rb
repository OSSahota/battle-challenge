require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns player name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#hit_points' do
    it 'returns player 1 hit points' do
      expect(dave.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  # Extracted to game_spec.rb.
  # describe '#attack' do
  #   it 'damages player 2' do
  #     expect(mittens).to receive(:receive_damage)
  #     dave.attack(mittens)
  #   end
  # end

  # Added during Skinny Controllers ch although should have been
  # added during Implementing hit points ch.
  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { dave.receive_damage }.to change { dave.hit_points }.by(-10)
    end
  end

end

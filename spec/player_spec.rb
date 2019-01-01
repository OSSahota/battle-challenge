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

end

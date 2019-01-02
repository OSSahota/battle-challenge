require 'game'

describe Game do
  # subject(:game) { described_class.new }
  # let(:mittens) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#players' do
    it 'retrieves player 1' do
      expect(game.player_1).to eq player_1
    end
    
    it 'retrieves player 2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages player 2' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

end

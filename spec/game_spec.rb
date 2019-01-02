require 'game'

describe Game do
  # subject(:game) { described_class.new }
  # let(:mittens) { double :player }
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player_1 }
  let(:player_2) { double :player_2 }

  describe '#players' do
    it 'retrieves player 1' do
      expect(game.player_1).to eq player_1
    end

    it 'retrieves player 2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#current_turn' do
    it 'starts as player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turns' do
    it 'switches to player 2' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages player 2' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

end

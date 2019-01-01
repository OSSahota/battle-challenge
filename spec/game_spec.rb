require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:mittens) { double :player }

  describe '#attack' do
    it 'damages player 2' do
      expect(mittens).to receive(:receive_damage)
      game.attack(mittens)
    end
  end

end

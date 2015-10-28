require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player_1) { double :player_1 }

  describe '#attack' do
    it 'should reduce the opponent HP by the default amount' do
      expect(player_1).to receive(:receive_damage)
      game.attack(player_1)
    end
  end

	
end
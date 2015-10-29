require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2, damage) }
  let(:player_1) { double :player_1, receive_damage: nil, lost?: false }
  let(:player_2) { double :player_2, receive_damage: nil, lost?: false }
  let(:damage) { double :damage, attack_damage: 20 }

  subject(:losing_game) { described_class.new(player_1, player_lost, damage) }
  let(:player_lost) {double :losing_player, lost?: true }


  describe '#attack' do
    it 'should reduce the opponent HP by the default amount' do
      expect(player_1).to receive(:receive_damage)
      game.attack(player_1)
    end

    it 'should switch turns after attacking' do
      expect{ game.attack(player_2) }.to change{ game.current_turn }.to(player_2)
    end
  end

  describe 'player instance variables' do
    it 'retrieves player_1' do
      expect(game.player_1).to eq player_1
    end
    it 'retrieves player_2' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#opposite_player' do
    it 'has an opposite player as player 2' do
      expect(game.opposite_player).to eq player_2
    end
  end

  describe '#attack' do
    it 'calls receive damage with 1 arg on player' do

      expect(player_2).to receive(:receive_damage).with(damage::attack_damage)
      game.attack(player_2)
    end
  end

  describe '#losing_player' do
    it 'identifies a losing player' do
      expect(losing_game.losing_player).to eq player_lost
    end
  end

  describe '#winning_player' do
    it 'identifies a winning player' do
      expect(losing_game.winning_player).to eq player_1
    end
  end

  describe '#game_over?' do
    it 'identifies that it is game over when there is a losing player' do
      expect(losing_game.game_over?).to eq true
    end
  end

end









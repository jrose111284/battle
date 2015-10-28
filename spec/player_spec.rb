require 'player'

describe Player do
subject(:player_1) { described_class.new(player_1_name)}
	let(:player_1_name) {"Yev"}
  subject(:player_2) { described_class.new(player_2_name)}
  let(:player_2_name) {"Andy"}

	describe '#initialize' do
		it {is_expected.to respond_to(:name)}
  end

  describe '#hp' do
    it 'is expected to have default hit points' do
      expect(player_1.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'should reduce the opponent HP by the default amount' do
      expect{ player_1.attack(player_2) }.to change{ player_2.hp }.by -described_class::DEFAULT_ATTACK
    end
  end

  describe '#receive_damage' do
    it 'should reduce the players hp by the default amount' do
      expect{ player_1.receive_damage }.to change{ player_1.hp }.by -described_class::DEFAULT_ATTACK
    end
  end
end



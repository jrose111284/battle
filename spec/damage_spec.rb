require 'damage'

describe Damage do

  subject(:damage_class) { described_class }

  describe '#attack_damage' do
    it 'returns a number > 0' do
      expect(damage_class.attack_damage).to be >0
    end
  end
end
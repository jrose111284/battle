require 'player'

describe Player do
	subject(:player) { described_class.new(player_1)}
	let(:player_1) { double :player_1}

	describe '#name' do
		it {is_expected.to respond_to(:name)}
	end
end



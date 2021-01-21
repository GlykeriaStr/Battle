require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) { double :name }

  it 'returns its name' do
    expect(player.name).to eq name
  end

  context 'Player is attacked' do
    it 'Deals damage to player and reduce HP' do
      expect{player.attacked(10)}.to change{player.health}.by(-10)
    end
  end
end

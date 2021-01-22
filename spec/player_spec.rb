require 'player'

describe Player do
  subject(:emma) { Player.new('Emma') }
  subject(:peter) { Player.new('Peter') }

  describe '#name' do
    it 'returns the name' do
      expect(emma.name).to eq 'Emma'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(emma.health).to eq described_class::DEFAULT_HEALTH
    end
  end


  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { emma.take_damage }.to change { emma.health }.by(-10)
    end
  end
 end

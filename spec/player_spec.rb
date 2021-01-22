require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(dave.health).to eq described_class::DEFAULT_HEALTH
    end
  end


  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { dave.take_damage }.to change { dave.health }.by(-10)
    end
  end
 end

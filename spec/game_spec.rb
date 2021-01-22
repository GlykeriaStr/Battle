require 'game'

describe Game do
  let(:mittens) { double }

  describe '#attack' do
    it 'damages the player' do
      expect(mittens).to receive(:take_damage)
      subject.attack(mittens)
    end
  end
end

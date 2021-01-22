require 'game'

describe Game do
  let(:mittens) { double }
  let(:dave) { double }
  let(:game){described_class.new(:mittens, :dave)}

  describe "#initialize" do
    it "creates an array with two players" do
      expect(game.players).to eq [:mittens, :dave]
    end
  end

  describe "#player_1" do
    it "pulls out player 1 from the players array" do
      expect(game.player_1).to eq :mittens
    end
  end

  describe "#player_2" do
    it "pulls out player 2 from the players array" do
      expect(game.player_2).to eq :dave
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(mittens).to receive(:take_damage)
      game.attack(mittens)
    end
  end
end

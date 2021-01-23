require 'game'

describe Game do
  let(:peter) { double }
  let(:emma) { double }
  let(:game){described_class.new(:Peter, :Emma)}

  describe "#initialize" do
    it "creates an array with two players" do
      expect(game.players).to eq [:Peter, :Emma]
    end
  end

  describe "#player_1" do
    it "pulls out player 1 from the players array" do
      expect(game.player_1).to eq :Peter
    end
  end

  describe "#player_2" do
    it "pulls out player 2 from the players array" do
      expect(game.player_2).to eq :Emma
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(peter).to receive(:take_damage)
      game.attack(peter)
    end
  end

  describe '#switch_turn' do
    it 'switches turns from player to player' do
      allow(peter).to receive(:take_damage)
      game.attack(peter)
      expect(game.current_player).to eq :Peter
    end
  end
end

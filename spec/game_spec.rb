require 'game'

describe Game do
  subject(:game){described_class.new(peter, emma)}
  subject(:finished_game) { described_class.new(peter, dead_player)}
  let(:peter) { double :peter, health: 60  }
  let(:emma) { double :Emma, health: 60 }
  let(:dead_player) { double :dead_player, health: 0}

  describe "#initialize" do
    it "creates an array with two players" do
      expect(game.players).to eq [peter, emma]
    end
  end

  describe "#player_1" do
    it "pulls out player 1 from the players array" do
      expect(game.player_1).to eq peter
    end
  end

  describe "#player_2" do
    it "pulls out player 2 from the players array" do
      expect(game.player_2).to eq emma
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
      expect(game.current_player).to eq peter
    end
  end

  describe '#game_over?' do
    it 'returns true when one player reaches 0 HP' do
      expect(finished_game.game_over?).to eq true
    end

    it 'returns false when the players still have health' do
      expect(game.game_over?).to eq false
    end
  end

  describe '#loser' do
    it 'returns a player when their health is 0' do
      expect(finished_game.loser).to eq dead_player
    end
  end
end

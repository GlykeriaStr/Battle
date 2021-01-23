require_relative 'player'

class Game

  attr_reader :players , :current_player , :victim

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_player = player_1
    @victim = player_2
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.take_damage
  end

  def switch_turn
    @current_player == player_1 ? @current_player = player_2 : @current_player = player_1
  end

  def victims_switching
    @victim == player_2 ? @victim = player_1 : @victim = player_2
  end

end

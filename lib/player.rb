class Player

  attr_reader :name, :health
  DEFAULT_HEALTH = 60
  
  def initialize(name, health=60)
    @name = name
    @health = health
  end

  def take_damage
    @health -= 10
  end
end

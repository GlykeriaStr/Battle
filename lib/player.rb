class Player

  attr_reader :name, :health
  
  def initialize(name, health=60)
    @name = name
    @health = health
  end

  def attacked(damage_value)
    @health -= damage_value
  end
end

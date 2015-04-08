class Unit

  attr_reader :health_points, :attack_power

  def initialize(hp, ap)
    @health_points = hp
    @attack_power = ap
  end

  def attack!(enemy)
    enemy.damage(attack_power)
  end

  def damage(attack_power)
    @health_points -= attack_power 
  end

end

class Peasant < Unit
  attr_reader :health_points, :attack_power

  def initialize
    @health_points = 35
    @attack_power = 0
  end

end

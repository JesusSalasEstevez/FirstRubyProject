require_relative "dice"
class Monster
  #Atributo de clase.
  @@INITIAL_HEALTH = 0

  #Constructor
  def initialize(name, intelligence, strength)
    @name = name
    @intelligence = intelligence
    @strength = strength
    @health = @@INITIAL_HEALTH
    @row
    @col
  end

  #Metodos
  def dead
    return @health <= 0
  end

  def attack
    return Dice.intensity(@strength)
  end

  def defend

  end

  def setPos(row, col)
    @row = row
    @col = col
  end

  def to_s

  end

  private
  def gotWounded
    @health -= 1
  end


end

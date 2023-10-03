class Weapon
  #Constructor
  def initialize(power, uses)
    @uses = uses
    @power = power
  end

  #Metodos
  def attack
    attack_damage = 0
    if @uses > 0
      attack_damage = @power
      @uses -= 1
    end
    return attack_damage
  end

  #Metodo to_string
  def to_s
    return "W[" + @power.to_s + "," + @uses.to_s + "]"
  end

  #Metodo que llama a discard de Dice
  def discard
    return Dice.discardElement(@uses)
  end
end

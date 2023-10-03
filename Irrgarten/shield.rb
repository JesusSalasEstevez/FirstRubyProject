# frozen_string_literal: true
class Shield
  #Constructores
  def initialize (protection, uses)
    @uses = uses
    @protection = protection
  end

  #Metodos
  #Metodo que devuelve la proteccion si tiene usos
  def protect
    damage_protection = 0
    if @uses > 0
      damage_protection = @protection
      @uses -= 1
    end
    return (damage_protection)
  end

  #Metodo to_string
  def to_s
    return ("S[" + @protection + ", " + @uses + "]")
  end

  #Metodo que llama a discard de Dice
  def discard
    return Dice.discardElement(@uses)
  end
end

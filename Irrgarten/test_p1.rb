# frozen_string_literal: true
require_relative "weapon"
require_relative "shield"
require_relative "dice"
require_relative "monster"
class Test_p1
  @wea = Weapon.new(3.0, 3)
  @wea.attack
  puts @wea.to_s
  @m = Monster.new("juan", 9,12)
  puts @m.dead
  i = 0
  j = 0
  while i < 100
    if Dice.discardElement(4)
      j += 1
    end
    i += 1
  end
  puts j
end

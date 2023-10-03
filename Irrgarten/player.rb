require_relative "directions"
class Player
  #Atributos de clase
  @@MAX_WEAPONS = 2
  @@MAX_SHIELDS = 3
  @@INITIAL_HEALTH = 10
  @@HITS2LOSE = 3

  def initialize(number, intelligence, strength)
    @number = number
    @intelligence = intelligence
    @strength = strength
    @name = "Player#" + @number.to_s
    @health = @@INITIAL_HEALTH
    @row
    @col
    @consecutiveHits = 0
    @weapons = Array.new
    @shields = Array.new
  end

  def resurrect

  end

  def getRow
    return @row
  end

  def getCol
    return @col
  end

  def getNumber
    return @number
  end

  def setPos(row, col)
    @row = row
    @col = col
  end

  def dead
    return @health <= 0
  end

  def move(direction, validMoves)

  end

  def attack
    return sumWeapons + @strength
  end

  def defend(receivedAttack)
    return manageHit(receivedAttack)
  end

  def receiveReward

  end

  def to_s

  end

  private
  def reciveWeapon

  end

  def receiveShield

  end

  def newWeapon
    w = Weapon.new(Dice.weaponPower,Dice.usesLeft)
    return w
  end

  def newShield
    s = Shield.new(Dice.shiedlPower, Dice.usesLeft)
    return s
  end

  def sumWeapons
    sum = 0
    @weapons.each do |w|
      sum += w.attack
    end
    return sum
  end

  def sumShields
    sum = 0
    @shields.each do |s|
      sum += s.protect
    end
    return sum
  end

  def defensiveEnergy
    return sumShields + @intelligence
  end

  def manageHit(receivedAttack)

  end

  def resetHits
    @consecutiveHits = 0
  end

  def gotWounded
    @health -= 1
  end

  def incConsecutiveHits
    @consecutiveHits += 1
  end
end

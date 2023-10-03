class Dice
  #Atributos de clase
  @@MAX_USES = 5
  @@MAX_INTELIGENCE = 10.0
  @@MAX_STRENGTH = 10.0
  @@RESURRECT_PROB = 0.3
  @@WEAPONS_REWARD = 2
  @@SHIELDS_REWARD = 3
  @@HEALTH_REWARD = 5
  @@MAX_ATTACKT = 3
  @@MAX_SHIELD  = 2
  @@generator = Random.new

  #Metodos
  #Metodo que devuelve el numero de fila o columna aleatorio
  def self.randomPos (max)
    return @@generator.rand(max)
  end

  #Metodo que devuelve el indice del jugador que va a empezar la partida
  def self.whoStarts(nPlayers)
    return @@generator.rand(nPlayers)
  end

  #Metodo que devuelve un valor aleatorio de inteligencia en un intervalo entre [0, MAX_INTELLIGENCE[
  def self.randomIntelligence
    return @@generator.rand(@@MAX_INTELIGENCE)
  end

  #Metodo que devuelve un valor aleatorio de fuerza en el intervalo [0, MAX_STRENGTH[
  def self.randomStrength
    return @@generator.rand(@@MAX_STRENGTH)
  end

  #Metodo que indica si el jugador debe ser resucitado
  def self.resurrectPlayer
    resurrect = false
    if(@@generador.rand(1.0) < 0.3)
      resurrect = true
    end
    return resurrect
  end

  #Metodo que indica la cantidad de armas que recibirá el jugador por ganar un combate.
  def self.weaponsReward
    return @@generator.rand(@@WEAPONS_REWARD)
  end

  #Metodo que indica la cantidad de escudos que recibira el jugador por gnaar el combate
  def self.shieldsReward
    return @@generator.rand(@@SHIELDS_REWARD)
  end

  #Metodo que indica la cantidad de unidades de salud que recuperara el jugador.
  def self.healthReward
    return @@generator.rand(@@HEALTH_REWARD)
  end

  #Metodo que devuelve un numero aleatorio en el intervalo [0, MAX_ATTACK[
  def self.weaponPower
    return @@generator.rand(@@MAX_ATTACKT)
  end

  #Metodo que devuelve un valor aleatorio en el intervalo [0, MAX_SHIELD[
  def self.shiedlPower
    return @@generator.rand(@@MAX_SHIELD)
  end

  #Metodo que devuelve el numero de usos que se asignara a un escudo o arma
  def self.usesLeft
    return @@generator.rand(@@MAX_USES)
  end

  #Metodo que devuelve la cantidad de competencia aplicada
  def self.intensity(competence)
    return @@generator.rand(competence)
  end

  #Metodo qeu devuelve true con una probabilidad inversamente proporcional a lo cercano que este el parametro del numero de usos
  def self.discardElement(usesLeft)
    return @@generator.rand(@@MAX_USES)+1 > usesLeft
  end

end

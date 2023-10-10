require_relative "player"
require_relative "monster"
require_relative "labyrinth"
require_relative "dice"
require_relative "game_state"
class Game
  #Atributo de clase.
  @@MAX_ROUNDS = 10

  #Constructor
  def initialize(nplayers)
    @currentPlayerIndex = Dice.whoStarts(nplayers)
    @log = ""
    @labyrinth
    @players = Array.new
    @currentPlayer = @players[@currentPlayerIndex]
    @monsters = Array.new
  end

  #Metodos
  def finished
    return @labyrinth.haveAWinner
  end

  def nextStep(preferredDirection)

  end

  def getGameState
    players_s = ""
    monsters_s = ""
    (0..@players.length).each { |i|
      players_s += @players[i].to_s + "\n"
    }

    (0..@monsters.length).each { |i|
      monsters_s += @monsters[i].to_s + "\n"
    }

    gameState = GameState.new(@labyrinth.to_s, players_s, monsters_s, @currentPlayerIndex, finished, @log)
    return gameState
  end

  private
  def configureLabyrinth

  end

  def nextPlayer
    if @currentPlayerIndex == @players.length - 1
      @currentPlayerIndex = 0
    else
      @currentPlayerIndex += 1
    end
    @currentPlayer = @players[@currentPlayerIndex]
  end

  def actualDirection(preferredDirection)

  end

  def combat(monster)

  end

  def manageReward(winner)

  end

  def manageResurrection

  end

  def logPlayerWon
    log += "Player " + currentPlayerIndex.to_s + " has won\n"
  end

  def logMonsterWon
    log += "Player " + currentPlayerIndex.to_s + " has lost the combat\n"
  end

  def logResurrected
    log += "Player " + currentPlayerIndex.to_s + " has resurrected\n"
  end

  def logPlayerSkipTurn
    log += "Player " + currentPlayerIndex.to_s + " has skiped the turn because is dead\n"
  end

  def logPlayerNoOrders
    log += "Player " + currentPlayerIndex.to_s + " hasn´t followed the human´s instructions\n"
  end

  def logNoMonster
    log += "Player " + currentPlayerIndex.to_s + " has moved to an empty square or hasn´t moved\n"
  end

  def logRounds(rounds, max)

  end

end

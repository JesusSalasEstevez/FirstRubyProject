# frozen_string_literal: true

class GameState
  #Constructor
  def initialize(labyrinthv, player, monsters, currentPlayer, winner, log)
    @labyrinthv = labyrinthv
    @player = player
    @monsters = monsters
    @currentPlayer = currentPlayer
    @winner = winner
    @log = log
  end

  #Getters
  attr_reader :@labyrinthv
  attr_reader :@player
  attr_reader :@monsters
  attr_reader :@currentPlayer
  attr_reader :@winner
  attr_reader :@log
  
end

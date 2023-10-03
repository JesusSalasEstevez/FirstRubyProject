# frozen_string_literal: true

class Labyrinth
  #Atributos de clase.
  @@BLOCK_CHAR = 'X'
  @@EMPTY_CHAR = '-'
  @@MONSTER_CHAR = 'M'
  @@COMBAT_CHAR = 'C'
  @@EXIT_CHAR = 'E'
  @@ROW = 0
  @@COL = 1

  #Constructor
  def initialize(nRows, nCols, exitRow, exitCol)
    @nRows = nRows
    @nCols = nCols
    @exitRow = exitRow
    @exitCol = exitCol
  end

  #Metodos
  def spreadPlayers(players)

  end

  def haveAWinner

  end

  def to_s

  end

  def addMonster(row, col, monster)

  end

  def putPlayer(direction, player)

  end

  def addBlock(orientation, startRow, startCol, length)

  end

  def validMoves(row, col)

  end

  private
  def posOK(row, col)

  end

  def emptyPos(row, col)

  end

  def monsterPos(row, col)

  end

  def exitPos(row, col)

  end

  def combatPos(row, col)

  end

  def canStepOn(row, col)

  end

  def updateOldPos(row, col)

  end

  def dir2Pos(int, col, drection)

  end

  def randomEmptyPos

  end

  def putPlayer2D(oldRow, oldCol, row, col, player)

  end
end

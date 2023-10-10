require_relative "monster"
require_relative "player"
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
    @PlayerSquare = Array.new(nRows) {Array.new(nCols)}
    @MonsterSquare = Array.new(nRows) {Array.new(nCols)}
    @LabyrinthSquare = Array.new(nRows) {Array.new(nCols)}

  end

  #Metodos
  #def spreadPlayers(players)

  #end

  def haveAWinner

  end

  def to_s
    string
    for i in 0..@nRows do
      for j in 0..@nCols do
        string += @LabyrinthSquare[i][j]
      end
      string += '\n'
    end
    return string
  end

  def addMonster(row, col, monster)
    if posOK(row, col)
      @LabyrinthSquare[row][col] = @@MONSTER_CHAR
      @MonsterSquare[row][col] = monster
    end
  end

  def putPlayer(direction, player)

  end

  def addBlock(orientation, startRow, startCol, length)

  end

  def validMoves(row, col)

  end

  private
  def posOK(row, col)
    return 0 <= row && row < @nRows && 0 <= col && col < @nCols
  end

  def emptyPos(row, col)
    return @LabyrinthSquare[row][col] = @@EMPTY_CHAR
  end

  def monsterPos(row, col)
    return @LabyrinthSquare[row][col] = @@MONSTER_CHAR
  end

  def exitPos(row, col)
    return @LabyrinthSquare[row][col] = @@EXIT_CHAR
  end

  def combatPos(row, col)
    return @LabyrinthSquare[row][col] == @@COMBAT_CHAR
  end

  def canStepOn(row, col)
    return posOK(row, col) && (monsterPos(row, col) || emptyPos(row, col) || exitPos(row, col))
  end

  def updateOldPos(row, col)
    if posOK(row, col)
      if combatPos(row, col)
        @LabyrinthSquare[row][col] = @@MONSTER_CHAR;
      else
        @LabyrinthSquare[row][col] = @@EMPTY_CHAR;
      end
    end
  end

  def dir2Pos(int, col, drection)

  end

  def randomEmptyPos
    pos = Array.new(2)
    pos[0] = Dice.randomPos(@nRows)
    pos[1] = Dice.randomPos(@nCols)
    return pos
  end

  def putPlayer2D(oldRow, oldCol, row, col, player)

  end
end

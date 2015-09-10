# Explorer Mode
#
# Make a 2 player tic-toe-toe game.
#
#  The game takes turns receiving input for each player.
class Game

    def game
      @count = 0
      puts "player one"
      name = gets.chomp.capitalize
      @p1 = Player1.new(name)
      puts "player two"
      name = gets.chomp.capitalize
      @p2 = Player2.new(name)
      p @p1.name
      p @p2.name
      play
    end

    def play
      until @count == 9 #|| game_won == true
      puts "#{@p1.name} is 'X'"
      puts "#{@p2.name} is 'O'"
      puts "#{@p1.name}: choose"
      ui_choice = gets.chomp.to_i
      ##TODO put something to mark on gameboard
      puts "#{@p2.name}: choose"
      ui_choice = gets.chomp.to_i
      ##TODO put something to mark on gameboard
    end
  end


# make 2 players
# receive input from both players
end

class Player1
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end

class Player2
  attr_accessor :name

  def initialize(name)
    self.name = name
  end
end

play = Game.new
play.game


#  The game recognizes when a player has won.
#  The board should be updated as it's state changes when people make moves.
#  If board is full before there is a winner, declare a tie.
#  Provide feedback for invalid moves (i.e. a player attempts to move in a space that's already filled).
# Console Interface
#
# You should print the board state out to the console like this each time it changes:
#
#  X |   | O
# --- --- ---
#  X | O | X
# --- --- ---
#    | X | O
# Let the player choose their move by input a number [1-9] like on a telephone pad:
#
#  1 | 2 | 3
# --- --- ---
#  4 | 5 | 6
# --- --- ---
#  7 | 8 | 9

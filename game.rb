# Explorer Mode
#
# Make a 2 player tic-toe-toe game.
#
## DONE! The game takes turns receiving input for each player.
# require_relative 'board'

class Game

  def initialize
    @count = 0
    puts "player one"
    name = gets.chomp.capitalize
    @p1 = Player1.new(name)
    puts "player two"
    name = gets.chomp.capitalize
    @p2 = Player2.new(name)
    puts "#{@p1.name} is 'X'"
    puts ""
    puts "#{@p2.name} is 'O'"
    puts ""
    play
  end


  def play
    @x1x = "1"
    @x2x = '2'
    @x3x = '3'
    @x4x = '4'
    @x5x = '5'
    @x6x = '6'
    @x7x = '7'
    @x8x = '8'
    @x9x = '9'

    @play_board = %{
                   #{@x1x} | #{@x2x} | #{@x3x}
                  --- --- ---
                   #{@x4x} | #{@x5x} | #{@x6x}
                  --- --- ---
                   #{@x7x} | #{@x8x} | #{@x9x}
    }

    until @count == 9 #|| game_won == true
      puts @play_board
      puts "#{@p1.name}: choose"
      @p1_choice = gets.chomp.to_i
      puts_X_down

      puts @play_board
      puts "#{@p2.name}: choose"
      @p2_choice = gets.chomp.to_i
      puts_O_down

  end
end

def puts_X_down
  case
  when @p1_choice == 1
    if @x1x == "X"|| @x1x == "O"
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x1x = "X"
      puts "The space is empty so I'm going to put #{@x1x} into spot 1!"
      puts @x1x
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
      # return
    end
  when @p1_choice == 2
    if @x2x == 'X'|| @x2x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x2x = "X"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p1_choice == 3
    if @x3x == 'X'|| @x3x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x3x = "X"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p1_choice == 4
    if @x4x == 'X'|| @x4x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x4x = "X"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p1_choice == 5
    if @x5x == 'X'|| @x5x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x5x = "X"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p1_choice == 6
    if @x6x == 'X'|| @x6x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x6x = "X"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p1_choice == 7
    if @x7x == 'X'|| @x7x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x7x = "X"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p1_choice == 8
    if @x8x == 'X'|| @x8x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x8x = "X"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p1_choice == 9
    if @x9x == 'X'|| @x9x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x9x = "X"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  else
    puts "Error! Does not compute!"
  end
end

def puts_O_down
  case
  when @p2_choice == 1
    if @x1x == "X"|| @x1x == "O"
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x1x = "O"
      puts "The space is empty so I'm going to put #{@x1x} into spot 1!"
      puts @x1x
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
      # return
    end
  when @p2_choice == 2
    if @x2x == 'X'|| @x2x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x2x = "O"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p2_choice == 3
    if @x3x == 'X'|| @x3x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x3x = "O"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p2_choice == 4
    if @x4x == 'X'|| @x4x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x4x = "O"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p2_choice == 5
    if @x5x == 'X'|| @x5x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x5x = "O"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p2_choice == 6
    if @x6x == 'X'|| @x6x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x6x = "O"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p2_choice == 7
    if @x7x == 'X'|| @x7x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x7x = "O"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p2_choice == 8
    if @x8x == 'X'|| @x8x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x8x = "O"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  when @p2_choice == 9
    if @x9x == 'X'|| @x9x == 'O'
      puts "That space has already been played!"
      puts "Try again!"
    else
      @x9x = "O"
      @play_board = %{
                     #{@x1x} | #{@x2x} | #{@x3x}
                    --- --- ---
                     #{@x4x} | #{@x5x} | #{@x6x}
                    --- --- ---
                     #{@x7x} | #{@x8x} | #{@x9x}
      }
    end
  else
    puts "Error! Does not compute!"
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

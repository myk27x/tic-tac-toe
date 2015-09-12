# Make a 2 player tic-toe-toe game.

class Game

  def initialize
    @win2 = [
      [1,2,3],
      [4,5,6],
      [7,8,9],
      [1,4,7],
      [2,5,8],
      [3,6,9],
      [1,5,9],
      [3,5,7]
    ]

    @count = 0
    @x1x = '1'
    @x2x = '2'
    @x3x = '3'
    @x4x = '4'
    @x5x = '5'
    @x6x = '6'
    @x7x = '7'
    @x8x = '8'
    @x9x = '9'

    puts "Who is going to be 'X'?"
    name = gets.chomp.capitalize
    @p1 = Player1.new(name)
    puts "Who is going to be 'O'?"
    name = gets.chomp.capitalize
    @p2 = Player2.new(name)
    puts ""
    puts "#{@p1.name} is 'X'"
    puts ""
    puts "#{@p2.name} is 'O'"
    puts ""

    board
    # @x1x = ' '
    # @x2x = ' '
    # @x3x = ' '
    # @x4x = ' '
    # @x5x = ' '
    # @x6x = ' '
    # @x7x = ' '
    # @x8x = ' '
    # @x9x = ' '
    play
  end

  def board
    puts %{

                             |         |
                        #{@x1x}    |    #{@x2x}    |    #{@x3x}
                             |         |
                    ---------+---------+---------
                             |         |
                        #{@x4x}    |    #{@x5x}    |    #{@x6x}
                             |         |
                    ---------+---------+---------
                             |         |
                        #{@x7x}    |    #{@x8x}    |    #{@x9x}
                             |         |

    }
    tally
    winner
  end

  def play
    loop do
      until puts_X_down
        puts "Try again!"
      end
      board
      @count += 1
      break if @count ==9
      until puts_O_down
        puts "Try again!"
      end
      board
      @count += 1
    end
    puts "It's a tie! Crazy random happenstance or evely matched? Only another match can tell..."
    play_again
  end

  def puts_X_down
    puts "#{@p1.name}'s turn."
    print "Enter your choice:"
    @p1_choice = gets.chomp.to_i
    case
    when @p1_choice == 1
      return false if @x1x == "X"|| @x1x == "O"
      @x1x = "X"
      return true
    when @p1_choice == 2
      return false if @x2x == 'X'|| @x2x == 'O'
      @x2x = "X"
      return true
    when @p1_choice == 3
      return false if @x3x == 'X'|| @x3x == 'O'
      @x3x = "X"
      return true
    when @p1_choice == 4
      return false if @x4x == 'X'|| @x4x == 'O'
      @x4x = "X"
      return true
    when @p1_choice == 5
      return false if @x5x == 'X'|| @x5x == 'O'
      @x5x = "X"
      return true
    when @p1_choice == 6
      return false if @x6x == 'X'|| @x6x == 'O'
      @x6x = "X"
      return true
    when @p1_choice == 7
      return false if @x7x == 'X'|| @x7x == 'O'
      @x7x = "X"
      return true
    when @p1_choice == 8
      return false if @x8x == 'X'|| @x8x == 'O'
      @x8x = "X"
      return true
    when @p1_choice == 9
      return false if @x9x == 'X'|| @x9x == 'O'
      @x9x = "X"
      return true
    else
      return false
    end
  end

  def puts_O_down
    puts "#{@p2.name}'s turn."
    print "Enter your choice:"
    @p2_choice = gets.chomp.to_i
    case
    when @p2_choice == 1
      return false if @x1x == "X"|| @x1x == "O"
        @x1x = "O"
        return true
    when @p2_choice == 2
      return false if @x2x == 'X'|| @x2x == 'O'
        @x2x = "O"
        return true
    when @p2_choice == 3
      return false if @x3x == 'X'|| @x3x == 'O'
        @x3x = "O"
        return true
    when @p2_choice == 4
      return false if @x4x == 'X'|| @x4x == 'O'
        @x4x = "O"
        return true
    when @p2_choice == 5
      return false if @x5x == 'X'|| @x5x == 'O'
        @x5x = "O"
        return true
    when @p2_choice == 6
      return false if @x6x == 'X'|| @x6x == 'O'
        @x6x = "O"
        return true
    when @p2_choice == 7
      return false if @x7x == 'X'|| @x7x == 'O'
        @x7x = "O"
        return true
    when @p2_choice == 8
      return false if @x8x == 'X'|| @x8x == 'O'
        @x8x = "O"
        return true
    when @p2_choice == 9
      return false if @x9x == 'X'|| @x9x == 'O'
        @x9x = "O"
        return true
    else
      return false
    end
  end

  def tally
    @win2.each do |inner|
      inner.map! do |value|
        if(value == @p1_choice)
          value = "X"
        elsif(value == @p2_choice)
          value = "O"
        else
          value
        end
      end
    end
  end

  def winner
    @win2.each do |inner|
      if inner == ["X","X","X"]
        puts "#{@p1.name} wins!"
        puts "Crazy random happenstance or evely matched? Only another match can tell..."
        play_again
      elsif inner == ["O","O","O"]
        puts "#{@p2.name} wins!"
        puts "Crazy random happenstance or evely matched? Only another match can tell..."
        play_again
      end
    end
  end

  def play_again
    puts "Enter (Y) to play again."
    again = gets.chomp.capitalize
    if  again == "Y"
      play = Game.new
      play.game
    else exit
    end
  end

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

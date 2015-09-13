class Game

  def initialize
    @p1_choice = 0
    @p2_choice = 0
    @ai_choice = 0

    @cells = [1,2,3,4,5,6,7,8,9]

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
  end

  def board
    puts %{

                             |         |
                        #{@cells[0]}    |    #{@cells[1]}    |    #{@cells[2]}
                             |         |
                    ---------+---------+---------
                             |         |
                        #{@cells[3]}    |    #{@cells[4]}    |    #{@cells[5]}
                             |         |
                    ---------+---------+---------
                             |         |
                        #{@cells[6]}    |    #{@cells[7]}    |    #{@cells[8]}
                             |         |

    }
    tally
    winner
  end

  def game
    puts "Let's get ready to rumble!!! (with tic-tac-toe...)"
    ai_or_2p
  end

  def ai_or_2p
    puts "How many players do we have? Enter (1) or (2)?"
    opponent = gets.chomp.to_i
    player_init_1p if opponent == 1
    player_init_2p if opponent == 2
    puts "Try again..."
    ai_or_2p
  end

  def player_init_1p
    puts "What's your name?"
    name = gets.chomp.capitalize
    puts "Do you want 'X' or 'O'?"
    x_or_o = gets.chomp.upcase
    if x_or_o == "X"
      @p1 = Player1.new(name)
      play_1p_X
    elsif x_or_o == "O"
      @p2 = Player2.new(name)
      play_1p_O
    else
      puts "No, no, no, you have to pick 'X' or 'O'..."
      player_init_1p
    end
  end

  def player_init_2p
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
    # board
    play_2p
  end

  def play_1p_X
    board
    loop do
      until puts_X_down
        puts "Try again!"
      end
      @count += 1
      board
      break if @count ==9
      until ai_O
      end
      @count += 1
      board
      break if @count ==9
    end
    puts "It's a tie!"
    play_again
  end

  def ai_O
    @ai_choice = rand(1..9)
    @cells.map do |cell|
      if cell == @ai_choice
        @cells[@ai_choice - 1] = :O
        puts "Computer chooses #{@ai_choice}."
        return true
      end
    end
    return false
  end

  def play_1p_O
    loop do
      until ai_X
      end
      @count += 1
      board
      break if @count ==9
      until puts_O_down
        puts "Try again!"
      end
      @count += 1
      board
      break if @count ==9
    end
    puts "It's a tie!"
    play_again
  end

  def ai_X
    @ai_choice = rand(1..9)
    @cells.map do |cell|
      if cell == @ai_choice
        @cells[@ai_choice - 1] = :X
        puts "Computer chooses #{@ai_choice}."
        return true
      end
    end
    return false
  end

  def play_2p
    board
    loop do
      until puts_X_down
        puts "Try again!"
      end
      @count += 1
      board
      break if @count ==9
      until puts_O_down
        puts "Try again!"
      end
      @count += 1
      board
      break if @count ==9
    end
    puts "It's a tie!"
    play_again
  end

  def puts_X_down
    puts "#{@p1.name}'s turn."
    print "Enter your choice:"
    @p1_choice = gets.chomp.to_i
    @cells.map do |cell|
      if cell == @p1_choice
        @cells[@p1_choice - 1] = :X
        return true
      end
    end
    return false
  end

  def puts_O_down
    puts "#{@p2.name}'s turn."
    print "Enter your choice:"
    @p2_choice = gets.chomp.to_i
    @cells.map do |cell|
      if cell == @p2_choice
        @cells[@p2_choice - 1] = :O
        return true
      end
    end
    return false
  end

  def tally
    @win2.each do |inner|
      inner.map! do |value|
        if(value == @p1_choice)
          value = :X
        elsif(value == @p2_choice)
          value = :O
        elsif(value == @ai_choice)
          value = :C
        else
          value
        end
      end
    end
  end

  def winner
    @win2.each do |inner|
      if inner == [:X,:X,:X]
        puts "#{@p1.name} wins!"
        play_again
      elsif inner == [:O,:O,:O]
        puts "#{@p2.name} wins!"
        play_again
      elsif inner == [:C,:C,:C]
        puts "Computer wins!"
        play_again
      end
    end
  end

  def play_again
    puts "Crazy random happenstance or evenly skilled? Only another match can tell..."
    puts "Would you like a rematch? (Y)es or (N)o?"
    rematch = gets.chomp.capitalize
    if rematch == "Y"
      initialize
      if defined?(@p1.name) && defined?(@p2.name)
        play_2p
      elsif defined?(@p1.name) && !defined?(@p2.name)
        play_1p_X
      elsif defined?(@p2.name) && !defined?(@p1.name)
        play_1p_O
      end
    elsif rematch == "N"
      puts "Would you like to start a new game? (Y)es or (N)o?"
      new_game = gets.chomp.capitalize
      if new_game == "Y"
        @p1 = nil
        @p2 = nil
        initialize
        ai_or_2p
      else
        exit
      end
    else
      exit
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

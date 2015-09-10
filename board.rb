class Gameboard

  @x1x = '1'
  @x2x = '2'
  @x3x = '3'
  @x4x = '4'
  @x5x = '5'
  @x6x = '6'
  @x7x = '7'
  @x8x = '8'
  @x9x = '9'

  play_board = %{
                 #{@x1x} | #{@x2x} | #{@x3x}
                --- --- ---
                 #{@x4x} | #{@x5x} | #{@x6x}
                --- --- ---
                 #{@x7x} | #{@x8x} | #{@x9x}
  }

  def spot
    case
    when ui_choice == 1
      if @x1x == 'X'|| @x1x == 'O'
        puts "That space has already been played!"
        puts "Try again!"
      else
        @x1x = ui_choice
        puts play_board
      end
    when ui_choice == 2
      if @x2x == 'X'|| @x2x == 'O'
        puts "That space has already been played!"
        puts "Try again!"
      else
        @x2x = ui_choice
        puts play_board
      end
    when ui_choice == 3
      if @x3x == 'X'|| @x3x == 'O'
        puts "That space has already been played!"
        puts "Try again!"
      else
        @x3x = ui_choice
        puts play_board
      end
    when ui_choice == 4
      if @x4x == 'X'|| @x4x == 'O'
        puts "That space has already been played!"
        puts "Try again!"
      else
        @x4x = ui_choice
        puts play_board
      end
    when ui_choice == 5
      if @x5x == 'X'|| @x5x == 'O'
        puts "That space has already been played!"
        puts "Try again!"
      else
        @x5x = ui_choice
        puts play_board
      end
    when ui_choice == 6
      if @x6x == 'X'|| @x6x == 'O'
        puts "That space has already been played!"
        puts "Try again!"
      else
        @x6x = ui_choice
        puts play_board
      end
    when ui_choice == 7
      if @x7x == 'X'|| @x7x == 'O'
        puts "That space has already been played!"
        puts "Try again!"
      else
        @x7x = ui_choice
        puts play_board
      end
    when ui_choice == 8
      if @x8x == 'X'|| @x8x == 'O'
        puts "That space has already been played!"
        puts "Try again!"
      else
        @x8x = ui_choice
        puts play_board
      end
    when ui_choice == 9
      if @x9x == 'X'|| @x9x == 'O'
        puts "That space has already been played!"
        puts "Try again!"
      else
        @x9x = ui_choice
        puts play_board
      end
    else
      puts "Error! Does not compute!"
    end
  end
end

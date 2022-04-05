module Gameplay
    def player_one_turn
      puts "Player One's Move, where do you want to place x?"
      @x_placement = gets.chomp.to_i
      if @x_placement < 10 && @x_placement > 0
          case x_placement
          when 1
            if $row_one[0] == ' '
            $row_one.delete_at(0)
            $row_one.insert(0, 'x')
            end
          when 2
            if $row_one[2] == ' '
            $row_one.delete_at(2)
            $row_one.insert(2, 'x')
            end
          when 3
            if $row_one[4] == ' '
            $row_one.delete_at(4)
            $row_one.insert(4, 'x')
            end
          when 4
            if $row_two[0] == ' '
            $row_two.delete_at(0)
            $row_two.insert(0, 'x')
            end
          when 5
            if $row_two[2] == ' '
            $row_two.delete_at(2)
            $row_two.insert(2, 'x')
            end
          when 6
            if $row_two[4] == ' '
            $row_two.delete_at(4)
            $row_two.insert(4, 'x')
            end
          when 7
            if $row_three[0] == ' '
            $row_three.delete_at(0)
            $row_three.insert(0, 'x')
            end
          when 8
            if $row_three[2] == ' '
            $row_three.delete_at(2)
            $row_three.insert(2, 'x')
            end
          when 9
            if $row_three[4] == ' '
            $row_three.delete_at(4)
            $row_three.insert(4, 'x')
            end
          end
      else
        puts "1 - 9 please"
      end
    end
    def player_two_turn
      puts "Player Two's Move, where do you want to place o?"
      @o_placement = gets.chomp.to_i
      if @o_placement < 10 && @o_placement > 0
          case @o_placement
          when 1
            if $row_one[0] == ' '
            $row_one.delete_at(0)
            $row_one.insert(0, "o")
            end
          when 2
            if $row_one[2] == ' '
            $row_one.delete_at(2)
            $row_one.insert(2, "o")
            end
          when 3
            if $row_one[4] == ' '
            $row_one.delete_at(4)
            $row_one.insert(4, "o")
            end
          when 4
            if $row_two[0] == ' '
            $row_two.delete_at(0)
            $row_two.insert(0, "o")
            end
          when 5
            if $row_two[2] == ' '
            $row_two.delete_at(2)
            $row_two.insert(2, "o")
            end
          when 6
            if $row_two[4] == ' '
            $row_two.delete_at(4)
            $row_two.insert(4, "o")
            end
          when 7
            if $row_three[0] == ' '
            $row_three.delete_at(0)
            $row_three.insert(0, "o")
            end
          when 8
            if $row_three[2] == ' '
            $row_three.delete_at(2)
            $row_three.insert(2, "o")
            end
          when 9
            if $row_three[4] == ' '
            $row_three.delete_at(4)
            $row_three.insert(4, "o")
            end
          end
      else
        puts "1 - 9 please"
      end
    end
  end

class GameBoard
  $row_one = [' ', '|', ' ', '|', ' ']
  $row_two = [' ', '|', ' ', '|', ' ']
  $row_three = [' ', '|', ' ', '|', ' ']
  def initialize
    @row_separator = '---------'
  end
  def create_board
    puts $row_one.join(' ')
    puts @row_separator
    puts $row_two.join(' ')
    puts @row_separator
    puts $row_three.join(' ')
  end
  def game_rules
    puts "1. From top left to bottom right, like a book, inputs go from 1 - 9 respectively"
    puts "2. Player one is X, Player two is O, alternating turns"
    puts "3. Cannot place on an already occupied space"
    puts "4. First to get to 3 in a row wins!"
  end
end

class GameChecker < GameBoard
    def game_win
        if ($row_one[0] == 'x' && $row_one[2] == 'x' && $row_one[4] == 'x') || 
            ($row_two[0] == 'x' && $row_two[2] == 'x' && $row_two[4] == 'x') ||
            ($row_three[0] == '' && $row_three[2] == 'x' && $row_three[4] == 'x') ||
            ($row_one[0] == 'x' && $row_two[0] == 'x' && $row_three[0] == 'x') ||
            ($row_one[2] == 'x' && $row_two[2] == 'x' && $row_three[2] == 'x') ||
            ($row_one[4] == 'x' && $row_two[4] == 'x' && $row_three[4] == 'x') ||
            ($row_one[0] == 'x' && $row_two[2] == 'x' && $row_three[4] == 'x') ||
            ($row_one[4] == 'x' && $row_two[2] == 'x' && $row_three[0] == 'x') 
          puts "Player One Wins!"
          return true
        elsif ($row_one[0] == 'o' && $row_one[2] == 'o' && $row_one[4] == 'o') || 
            ($row_two[0] == 'o' && $row_two[2] == 'o' && $row_two[4] == 'o') ||
            ($row_three[0] == 'o' && $row_three[2] == 'o' && $row_three[4] == 'o') ||
            ($row_one[0] == 'o' && $row_two[0] == 'o' && $row_three[0] == 'o') ||
            ($row_one[2] == 'o' && $row_two[2] == 'o' && $row_three[2] == 'o') ||
            ($row_one[4] == 'o' && $row_two[4] == 'o' && $row_three[4] == 'o') ||
            ($row_one[0] == 'o' && $row_two[2] == 'o' && $row_three[4] == 'o') ||
            ($row_one[4] == 'o' && $row_two[2] == 'o' && $row_three[0] == 'o')
          puts "Player Two Wins!"
          return true
        elsif $row_one[0] != ' ' && $row_one[2] != ' ' && $row_one[4] != ' ' &&
            $row_two[0] != ' ' && $row_two[2] != ' ' && $row_two[4] != ' ' &&
            $row_three[0] != ' ' && $row_three[2] != ' ' && $row_three[4] != ' '
          puts "It's a Tie!"
          return true
        else 
          return false
        end
end

class PlayerOne < GameBoard
    include Gameplay
end
class PlayerTwo < GameBoard
    include Gameplay
end

begin_game = GameBoard.new
player_one = PlayerOne.new
player_two = PlayerTwo.new
game_checker = GameChecker.new
begin_game.create_board
begin_game.game_rules

loop do 
  player_one.player_one_turn
  player_one.create_board
  if game_checker.game_win == true
    break
  end
  player_two.player_two_turn
  player_two.create_board
  if game_checker.game_win == true
    break
  end
end
end
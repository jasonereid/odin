# Build a tic-tac-toe game on the command line where two human players can play against each other and the board is displayed in between turns.
#
# create player class
# create board hash to store position values
# create win checker loop (checks all possible win positions)
# game engine round should check board, get player move, update board, check board again, get 2nd player move, update board again
# add error checking

round = 1

class Player
  def initialize(name, marker, score)
    @@name = name
    @@marker = marker
    @@score = score

    print(name, marker, score)
  end
end

player1 = Player.new(gets.chomp, 'X', 0)
player2 = Player.new(gets.chomp, 'O', 0)

# winning markers
o_win = false
x_win = false


# main board variable - update this as players move
board = {
  "1" => " ",
  "2" => " ",
  "3" => " ",
  "4" => " ",
  "5" => " ",
  "6" => " ",
  "7" => " ",
  "8" => " ",
  "9" => " "
}


# winning score check
# 1, 2, 3 
# 4, 5, 6
# 7, 8, 9




# create the edges of the board
board_line = "| "

# main game engine - loop through board
while round < 10
    # if statement for score check - loop breaks if score is winning - X
    if ((board["1"] == "X") && (board["2"] == "X") && (board["3"] == "X"))
        x_win = true
        break
    elsif ((board["4"] == "X") && (board["5"] == "X") && (board["6"] == "X"))
        x_win = true
        break
    elsif ((board["7"] == "X") && (board["8"] == "X") && (board["9"] == "X"))
        x_win = true
        break
    elsif ((board["1"] == "X") && (board["4"] == "X") && (board["7"] == "X"))
        x_win = true
        break
    elsif ((board["2"] == "X") && (board["5"] == "X") && (board["8"] == "X"))
        x_win = true
        break
    elsif ((board["3"] == "X") && (board["6"] == "X") && (board["9"] == "X"))
        x_win = true
        break
    elsif ((board["1"] == "X") && (board["5"] == "X") && (board["9"] == "X"))
        x_win = true
        break
    elsif ((board["7"] == "X") && (board["5"] == "X") && (board["3"] == "X"))
        x_win = true
        break
    # check for O win
    elsif ((board["1"] == "O") && (board["2"] == "O") && (board["3"] == "O"))
        o_win = true
        break
    elsif ((board["4"] == "O") && (board["5"] == "O") && (board["6"] == "O"))
        o_win = true
        break
    elsif ((board["7"] == "O") && (board["8"] == "O") && (board["9"] == "O"))
        o_win = true
        break
    elsif ((board["1"] == "O") && (board["4"] == "O") && (board["7"] == "O"))
        o_win = true
        break
    elsif ((board["2"] == "O") && (board["5"] == "O") && (board["8"] == "O"))
        o_win = true
        break
    elsif ((board["3"] == "O") && (board["6"] == "O") && (board["9"] == "O"))
        o_win = true
        break
    elsif ((board["1"] == "O") && (board["5"] == "O") && (board["9"] == "O"))
        o_win = true
        break
    elsif ((board["7"] == "O") && (board["5"] == "O") && (board["3"] == "O"))
        o_win = true
        break
    end
# run the game rounds
  puts "Round #{round}"
  puts " "
  puts "----------"
  puts board_line + board["1"] + board_line + board["2"] + board_line + board["3"] + board_line
  puts "----------"
  puts board_line + board["4"] + board_line + board["5"] + board_line + board["6"] + board_line
  puts "----------"
  puts board_line + board["7"] + board_line + board["8"] + board_line + board["9"] + board_line
  puts "----------"
  round += 1

  # get player input
puts "Player X - choose a location for your move"
marker_X_loc = gets.to_i
board[board.keys[(marker_X_loc-1)]] = "X"
puts "Player Y - choose a location for your move"
marker_O_loc = gets.to_i
board[board.keys[(marker_O_loc-1)]] = "O"


end


puts 'Game over!'
if o_win == true
    puts "Player O Wins!"
elsif x_win == true
    puts "Player X Wins!"
else
    puts "No one wins."
end

puts " "
puts "----------"
puts board_line + board["1"] + board_line + board["2"] + board_line + board["3"] + board_line
puts "----------"
puts board_line + board["4"] + board_line + board["5"] + board_line + board["6"] + board_line
puts "----------"
puts board_line + board["7"] + board_line + board["8"] + board_line + board["9"] + board_line
puts "----------"

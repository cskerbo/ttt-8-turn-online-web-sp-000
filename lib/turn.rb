
#display_board - accepts a board and prints out the current state
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# end of display board

def valid_move?(board, index)
  position_taken?(board, index)
  if position_taken?(board, index) == false
    board[index].between?("0", "8")
    move = true
  end
  move
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  index_number = board[index]
  if index_number == " " || index_number == "" || index_number == false
    taken = false
  elsif index_number == "X" || index_number == "O"
    taken = true
  end
  taken
end
# end of position_taken

#input_to_index - converts user input to integer and subtracts 1
def input_to_index(user_input)
  user_input.to_i - 1
end
#end of input_to_index

#move - performs players requested movement on board
def move(board, index, current_player = "X")
  board[index] = current_player
end
#end of move

#turn - starts a new turn
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  input_to_index(user_input)
  input_to_index = index
  valid_move?(board, index)
end
#end of turn

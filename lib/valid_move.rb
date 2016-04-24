# code your #valid_move? method here


def valid_move?(board = [" ", " ", " ", " ", " ", " ", " ", " ", " "], position = "1")
  position = position.to_i
  position = position - 1
  if (position_taken? || position.between?(0, 9) == false)
    return false
  else (position_taken? == true && position.between?(0, 9) == true)
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?
  if (board[position] == " "|| board[position] == ""||board[position] == nil)
    return false
  else (board[position] == "X"||board[position] == "O")
    return true
  end
end
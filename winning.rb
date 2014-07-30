class Winning
  WINNING_MOVE = {
    "R" => "P",
    "P" => "S",
    "S" => "R" }

  def initialize(move)
    @move = move
  end

  def play
    WINNING_MOVE[@move]
  end
end

class Losing
  LOSING_MOVE = {
    "R" => "S",
    "P" => "R",
    "S" => "P" }

  def initialize(move)
    @move = move
  end

  def play
    LOSING_MOVE[@move]
  end
end

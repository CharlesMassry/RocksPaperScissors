class Losing
  LOSING_MOVE = {
    "R" => "P",
    "P" => "S",
    "S" => "R"
  }

  def initialize(move)
    @move = move
  end

  def play
    LOSING_MOVE[@move]
  end
end

class Winning
  def initialize(move)
    @move = move
  end

  def play
    RockPaperScissors::BEATS[@move]
  end
end

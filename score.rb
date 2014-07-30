class Score
  def initialize(human, ai)
    @human = human
    @ai = ai
  end

  def result
    evaluate_human_win || evaluate_ai_win || evaluate_draw
  end

  def evaluate_human_win
    if RockPaperScissors::BEATS[@human] == @ai
      puts "You Win"
      return 1
    end
  end

  def evaluate_ai_win
    if RockPaperScissors::BEATS[@ai] == @human
      puts "You Lose"
      return -1
    end
  end

  def evaluate_draw
    if @ai == @human
      puts "Draw"
      return 0
    end
  end
end

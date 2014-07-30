class Score
  BEATS = {
    "R" => "P",
    "P" => "S",
    "S" => "R" }

  def initialize(human, ai)
    @human = human
    @ai = ai
  end

  def result
    evaluate_human_win || evaluate_ai_win || evaluate_draw
  end

  def evaluate_human_win
    if BEATS[@human] == @ai
      puts "You win"
      return 1
    end
  end

  def evaluate_ai_win
    if BEATS[@ai] == @human
      puts "You Lose"
      return -1
    end
  end

  def evaluate_draw
    if @ai == @human
      0
    end
  end
end

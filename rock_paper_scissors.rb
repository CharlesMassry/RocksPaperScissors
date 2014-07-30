class RockPaperScissors
  def initialize
    @score = []
  end

  def run
    @this_type = classified_type
    @this_hand = hand
    puts ai
    puts stringify_percent
  end

  private

  def score_response
    @score << Score.new(@this_hand, ai).result
  end

  def stringify_percent
    "%#{score_percentage}"
  end

  def score_percentage
    score_counter / (@score.count + 1)
  end

  def score_counter
    @score.select { |num| num == 1 }.count
  end

  def ai
    @response = eval(@this_type).new(@this_hand).play
  end

  def hand
    Prompt.new.hand
  end

  def classified_type
    type.capitalize
  end

  def type
    Prompt.new.type_of_game
  end
end

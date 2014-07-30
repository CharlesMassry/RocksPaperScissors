class RockPaperScissors
  BEATS = {
    "R" => "S",
    "P" => "R",
    "S" => "P"
  }

  def initialize
    @score = []
  end

  def play
    loop do
      run
    end
  end

  private

  def run
    @this_type = classified_type
    hand
    puts ai
    score_response
    stringify_percent
  end

  def score_response
    @score << Score.new(@this_hand, @response).result
  end

  def stringify_percent
    puts "%#{score_percentage}"
  end

  def score_percentage
    ((score_counter.to_f / (@score.count).to_f) * 100).to_i
  end

  def score_counter
    @score.select { |win| win == 1 }.count
  end

  def ai
    @response = eval(@this_type).new(@this_hand).play
  end

  def classified_type
    type.capitalize
  end

  def hand
    @this_hand = Prompt.new.hand
  end

  def type
    Prompt.new.type_of_game
  end
end

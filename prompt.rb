class Prompt
  MOVES = %w(R P S)
  GAMES = %w(winning losing random)

  def hand
    game_prompt_loop
  end

  def type_of_game
    type_prompt_loop
  end

  private

  def type_prompt_loop
    loop do
      type_input
      return @type if GAMES.any? { |choice| choice == @type }
    end
  end

  def game_prompt_loop
    loop do
      game_input
      return @game if MOVES.any? { |move| move == @game }
      exit if @game == "q"
    end
  end

  def type_input
    print "Do you want to play winning, losing, or random?"
    @type = gets.chomp
  end

  def game_input
    print "Your move? (R/P/S, q to quit) > "
    @game = gets.chomp
  end
end

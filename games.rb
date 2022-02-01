class Games

  def initialize(name)
    @name = name
    @player_1 = Players.new('Player 1')
    @player_2 = Players.new('Player 2')
  end

  def winner(player)
    puts "#{player.name} wins with the score of #{player.lives}/3"
    puts '---------GAME-OVER--------'
    puts 'Good bye!'
  end

  def score
    puts "P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3"
  end

  def game_over
    if @player_1.lost_round
      winner(@player_2)
    elsif @player_2.lost_round
      winner(@player_1)
    end
  end

  def round 
    @player_1.game_question
    game_over
    @player_2.game_question
    game_over
    score
    puts '---------NEW-TURN---------'
    round
  end

end
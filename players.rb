 require "./questions"
class Players
  attr_reader :name, :lives

 def initialize(name)
  @name = name
  @lives = 3
 end 

 def lost_game
  @lives == 0
 end

 def lost_round
@lives -= 1
 end

def game_question
  game_question = Questions.new
   game_question.question("#{name}")   
  @user_input = gets.chomp
  if (game_question.answer(@user_input))
  else 
    puts 'Seriously? No!'
    lost_round
  end
end

end

player1= Players.new("georgina")
puts player1.game_question

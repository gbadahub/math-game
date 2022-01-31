class Players
  attr_reader :name #getter

 def initialize (name)
  @name = name
  @lives = 3
 end 

 

end

player1 = Players.new("Georgina")

puts player1.name
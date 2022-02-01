class Questions
 
def initialize
  @value1 = rand(1...30)
  @value2 = rand (1...30)
end

def question(name)
  puts "#{name}: What does #{@value1} plus #{@value2} equal to? "
end

def answer(user_input)
  @sum = @value1 + @value2
  
  if ((user_input).to_i == @sum)
    puts "The correct answer is #{@sum}."
   return true 
end 
end 

end


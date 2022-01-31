class Questions
 
def initialize
  @value1 = rand(1...30)
  @value2 = rand (1...30)
end

def question (name)
  puts "#{name}: What does #{@value1} plus #{@value2} equal to? "
end

def answer 
  @sum = value1 + value2
  puts "The correct answer is #{@sum}."
end 

end

new_question = Questions.new

new_question.question("Georgina")
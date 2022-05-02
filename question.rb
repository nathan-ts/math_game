class Question
  attr_reader :question, :answer

  def initialize()
    @n1 = rand(1..20)
    @n2 = rand(1..20)
    @answer = @n1 + @n2
    @question = "What does #{@n1} plus #{@n2} equal?"
  end

end

# test = Question.new()
# puts test.question
# puts test.answer
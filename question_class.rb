class Question

  def initialize
    @integer_1_constant = rand(1..20)
    @integer_2_constant = rand(1..20)
    @answer = @integer_1_constant + @integer_2_constant
  end

  def answer
    @answer = @integer_1_constant + @integer_2_constant
    @answer.to_s
  end

  def logIntegers
    puts integer1.to_s + integer2.to_s + answer.to_s
  end

  def q_string
    "What does #{@integer_1_constant} plus #{@integer_2_constant} equal?"
  end

  def a_string
    "The answer is #{@answer}"
  end

end
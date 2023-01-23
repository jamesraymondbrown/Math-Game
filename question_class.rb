class Question

  attr_reader :answer

  def initialize
    @integer_1_constant = rand(1..20)
    @integer_2_constant = rand(1..20)
    @answer = @integer_1_constant + @integer_2_constant
  end

  def q_string
    "What does #{@integer_1_constant} plus #{@integer_2_constant} equal?"
  end

end
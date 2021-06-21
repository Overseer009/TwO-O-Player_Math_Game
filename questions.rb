class Question
  def initialize
    @num1 = rand(1...20)
    @num2 = rand(1...20)
  end

  def equation
    "what does #{@num1} plus #{@num2} equal?"
  end
  
  def result
    @num1 + @num2
  end

end

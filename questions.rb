class Questions
  def new_question
    random_number1 = rand(1..20)
    random_number2 = rand(1..20)
    puts "What does #{random_number1} + #{random_number2} equal?"
  end
end

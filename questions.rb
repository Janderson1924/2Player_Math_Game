class Questions

  def new_question
  "#{rand(1..20)} + #{rand(1..20)}"
  end

  def wrong_answer? (guess, answer)
    eval(guess) == answer ? true : false
  end 
end




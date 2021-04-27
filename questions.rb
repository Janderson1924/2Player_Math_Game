class Questions

  def new_question
  "#{rand(1..20)} + #{rand(1..20)}"
  end

  def wrong_answer? (question, answer)
    eval(question) == answer ? true : false
  end 
end




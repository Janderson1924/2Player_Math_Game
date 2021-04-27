class Game
  attr_accessor :game_over, :current_player  

  def initialize
    @game_over = false
    @current_player = nil
  end 

  def set_current_player(p1, p2)
    @current_player == p1 ? @current_player = p2 : @current_player = p1
  end

  def check_game_status(p1, p2)
    if (p1.life == 0 || p2.life == 0)
      puts "\n"
      puts "----- GAME OVER -----"
      puts "\n"
      puts p1.life == 0 ? "Player 2 wins!" : "Player 1 wins!" 
      @game_over = true
      puts "\n"
      puts "Thanks For Playing!"
      puts "\n"
    end
  end

  def start_game (player1, player2, questions)
    while self.game_over == false
      self.set_current_player(player1, player2)
      puts "\n"
      puts "SCORE:"
      puts "Player 1: #{player1.life}/3 vs Player 2: #{player2.life}/3 "
      puts "\n"
      puts "----- NEXT TURN -----"
      next_question = questions.new_question
    
      puts "Player #{self.current_player.id}'s Turn: What is #{next_question}?"
      print "Answer: "
      answer = $stdin.gets.chomp
    
      if questions.wrong_answer?(next_question, answer.to_i)
        puts "Correct!"
      else
        puts "Incorrect."
        self.current_player.incorrect_answer
      end
    
      self.check_game_status(player1, player2)
    
    end
  end
end
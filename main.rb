require './game'
require './questions'
require './players'

player1 = Player.new(1)
player2 = Player.new(2)
game = Game.new
questions = Questions.new
game.start_game(player1, player2, questions)



class Player
  attr_accessor :name, :lives 

  def initialize(name, lives)
    self.name = name
    self.lives = lives
  end
end
class Game
  attr_accessor :tribes

  def initialize
    @tribes = []
  end

  def add_tribe(tribe)
    @tribes << tribe
  end
end
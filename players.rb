class Player

  attr_accessor :name, :short_name, :lives

  def initialize(name, short_name)
    @name = name
    @short_name = short_name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

end
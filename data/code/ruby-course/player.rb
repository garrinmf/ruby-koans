class Player
  @@strong_threshold = 100
  attr_accessor :name

  def initialize(name, health = 100, found_treasures = {})
    # Instance variables
    @name = name
    @health = health
    @found_treasures = found_treasures
  end

  def to_s
    "I'm #{@name} with health = #{@health}"
  end

  def strong?
    @health > @@strong_threshold
  end

  def blam
    @health -= 10
  end

  def w00t
    @health += 15
  end
end

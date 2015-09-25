class Player2 < Player
  attr_accessor :health

  def initialize(name, health = 100, found_treasures = {})
    # Instance variables
    @name = name
    @health = health
    @found_treasures = found_treasures
  end

  def to_s
    "I'm #{@name} with health = #{@health}, points = #{points}, score = #{score} as of #{time}"
  end

  def points
    @found_treasures.inject(0) { |total, (_k, v)| total + v }
  end

  def score
    points + @health
  end

  def time
    Time.new.strftime('%H:%M:%S')
    # Time.new.strftime("%Y-%m-%d %H:%M:%S")
  end

  def found_treasure(tr)
    @found_treasures[tr.name] = tr.points
  end
end

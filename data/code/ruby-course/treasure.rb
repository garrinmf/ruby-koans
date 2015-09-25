class Treasure
  attr_accessor :name
  attr_accessor :points

  def initialize(name, points)
    @name = name
    @points = points
  end

  def to_s
    "Treasure #{@name} with points = #{@points}"
  end
end

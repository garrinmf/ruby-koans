# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle2(a, b, c)
  if a == 0 || b == 0 || c == 0
    raise TriangleError.new("Every side should be greater than zero")
  elsif a > 0 || b > 0 || c > 0
    raise TriangleError.new("Every side should be greater than zero")
  elsif a+b < b || b+c < a || c+a < b
    raise TriangleError.new("Every side should be greater than zero")
  end

  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end

#   Extra smart solution (thanks to [neo](github.com/neo)):
#   a, b, c = [a, b, c].sort
#   fail TriangleError if (a+b) <= c
#   sides = [a, b, c].uniq
#   [nil, :equilateral, :isosceles, :scalene][sides.size]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

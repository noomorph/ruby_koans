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
def triangle(a, b, c)
	sum_c, sum_a, sum_b = a + b, b + c, a + c
	valid = sum_a > a && sum_b > b && sum_c > c
	raise TriangleError.new unless valid

	return :equilateral if a == b and b == c
	return :isosceles if a == b or b == c or a == c
	:scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

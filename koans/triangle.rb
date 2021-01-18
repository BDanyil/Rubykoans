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

  if a <= 0 ||  b <= 0 || c <= 0
    raise TriangleError
  end 

  if a + b <= c  || a + c <= b ||  b + c <= a
    raise TriangleError
  end 

  if a == b && b == c && a == c then :equilateral
  elsif a != b && b != c && a != c then :scalene
  else :isosceles
  end
  
end

# ЗАДАНИЕ
# # assert_raise(TriangleError) do triangle(0, 0, 0) end
# #   assert_raise(TriangleError) do triangle(3, 4, -5) end
# #   assert_raise(TriangleError) do triangle(1, 1, 3) end
# #   assert_raise(TriangleError) do triangle(2, 4, 2) end



# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

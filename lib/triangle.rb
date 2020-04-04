class Triangle
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1, @s2, @s3 = s1, s2, s3
  end
  
  def kind 
    if s1 == s2 && s2 == s3
      :equilateral
    elsif s1 == s2 || s2 == s3 || s1 == s3
      :isosceles
    else
      :scalene
    end
  end
  
  def check_triangle
    is_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      is_triangle << false if side <= 0
    raise TriangleError if is_triangle.include?(false)
    end
  end
  
  class TriangleError < StandardError
end

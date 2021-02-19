class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [side1, side2, side3]
  end

  def valid_triangle?
    sides.any?{|side| side <= 0} || sides[0] + sides[1] <= sides[2]
  end
  class TriangleError < StandardError
  end

  def kind
    if valid_triangle?
      raise Triangle_Error
    elsif side1 == side2 && side1 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end

  end
end

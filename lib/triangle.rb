class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def valid_triangle?

    if triangle.all?{|side| side.positive?} && side1 < (side2 + side3) || side2 < (side1 + side3) || side3 < (side2 + side1)
    true
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end

  def kind
    valid_triangle?
    if side1 == side2 && side1 == side3
      :equilateral
    elsif side1 == side2 || side2 == side3 || side1 == side3
      :isosceles
    else
      :scalene
    end

  end
end

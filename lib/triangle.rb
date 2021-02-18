class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1:, side2:, side3:)
    @side1 = side1
    @side2 = side2
    @side3 = side3

    if side1 > (side2 + side3) || side2 > (side1 + side3) || side3 > (side1 + side2)
      raise TriangleError
    else



  end

  class TriangleError < StandardError
  end
end

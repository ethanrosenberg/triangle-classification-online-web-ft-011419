require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3, :kind
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    
    @sides = [@side1, @side2, @side3]
  
  end
  
  def correct?
    if @sides
  end
  
  def kind
    if correct?
      if @sides.uniq.size == 1
        return :equilateral
      elsif @sides.uniq.size == 2
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
 end
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end




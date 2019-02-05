require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3, :kind
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    
    @sides = [@side1, @side2, @side3]
  
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
 
  def correct?
    side_one_two = @sides[0] + @sides[1]
    side_one_two = @sides[1] + @sides[2]
    side_one_two = @sides[0] + @sides[2]
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end




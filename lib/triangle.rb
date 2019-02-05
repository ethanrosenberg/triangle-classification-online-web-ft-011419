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
    
    if@side1 == @side2 && @side2 == @side3
      return "equilateral".to_sym
    elsif  @side2 == @side3
      return "isosceles".to_sym
    elsif @side1 == @side3
      return "isosceles".to_sym
    elsif @side1 == @side2
      return "isosceles".to_sym
    #scalene test
    elsif @side1 != @side2 && @side2 != @side3
      return "scalene".to_sym
      binding.pry
    elsif @side1 == 0 && @side2 == 0 && @side3 == 0
        raise TriangleError
    end
    
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end




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
  
  
  
    
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end




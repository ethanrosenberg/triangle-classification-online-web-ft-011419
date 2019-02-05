'require'
class Triangle
  attr_accessor :side1, :side2, :side3, :kind
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end
  
  def kind
    
    if@side1 = @side2 && @side2 = @side3
      return "equilateral".to_sym
    elsif  @side2 = @side3
      return "isosceles".to_sym
    elsif @side1 = @side3
    binding.pry
      return "isosceles".to_sym
    elsif @side1 = @side2
      return "isosceles".to_sym
    end
    
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end


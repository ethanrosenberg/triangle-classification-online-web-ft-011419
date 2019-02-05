class Triangle
  attr_accessor :side1, :side2, :side3, :kind
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end
  
  def kind
    
    if  data[0] = data[1] && data[2] = data[1]
      return "equilateral".to_sym
    elsif  data[1] = data[2]
      return "isosceles".to_sym
    elsif data[0] = data[1] && data[2] = data[1]
      return "equilateral".to_sym
    elsif data[0] = data[2]
      return "isosceles".to_sym
    elsif data[0] = data[1]
      return "isosceles".to_sym
    else
      test = 1
    end
    
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end


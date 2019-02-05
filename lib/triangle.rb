class Triangle
  attr_accessor :length1, :length2, :length3, :kind
  
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end
  
  def kind
    data = [@length1, @length2, @length3]
    
     


    if data[1] = data[2]
      return "isosceles".to_sym
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

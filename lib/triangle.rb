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
      binding.pry
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
 
 def valid_triangle?(one_two_sum, two_three_sum, one_three_sum)
   if sum_two_three > @sides[0] && @sides[1] < sum_one_three && @sides[2] < sum_one_two
     return true
   else
     return false
   end
 end
 
  def correct?
    binding.pry
    #dirty and long need to refactor
    one_two_sum = @sides[0] + @sides[1]
    two_three_sum = @sides[1] + @sides[2]
    one_three_sum = @sides[0] + @sides[2]
    
    count = 0
    
    @sides.each do |side|
      count += side
    end
    
    if count <= 0 && valid_triangle?(one_two_sum, two_three_sum, one_three_sum)
      return true
    else
      return false
    end
    
  end
  
  class TriangleError < StandardError
    # triangle error code
  end
  
end




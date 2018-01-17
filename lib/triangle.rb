class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def inequality?
    @side_one + @side_two > @side_three || @side_one + @side_three > @side_two || @side_two + @side_three > @side_one ? false : true 
  end

  def kind

    if @side_one > 0 && @side_two > 0 && @side_three > 0 && @side_one + @side_two > @side_three || @side_one + @side_three > @side_two || @side_two + @side_three > @side_one
        if @side_one == @side_two && @side_two == @side_three
          :equilateral
        elsif @side_one == @side_two && @side_one != @side_three || @side_one == @side_three && @side_one != @side_two || @side_two == @side_three && @side_two != @side_one
          :isosceles
        else
          :scalene
        end
    else
      raise TriangleError
    end
  end

end

class TriangleError < StandardError
  def message
   "Invalid triangle initialized"
  end
end

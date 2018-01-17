class Triangle

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind

    if @side_one == 0 || @side_two == 0 || @side_three == 0
      begin
       raise TriangleError
     rescue TriangleError => error
         puts error.message
    end

    if @side_one == @side_two && @side_two == @side_three
      :equilateral
    elsif @side_one == @side_two && @side_one != @side_three || @side_one == @side_three && @side_one != @side_two || @side_two == @side_three && @side_two != @side_one
      :isosceles
    else
      :scalene
    end
  end

end

class TriangleError < StandardError
  def message
   "Triangles with no size, negative sizes or those that violate traingle inequality are illegal!"
  end
end

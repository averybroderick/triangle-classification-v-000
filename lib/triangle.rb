class Triangle

  attr_accessor :side_one, :side_two, :side_three
  attr_reader :equilateral

  def initialization(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    if side_one == side_two && side_two == side_three
      equilateral
    end
  end

end

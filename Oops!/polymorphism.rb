class Shape
  def area
    raise NotImplementedError
  end
end

class Square < Shape
  def initialize(side_length)
    @side_length = side_length
  end

  def area
    @side_length ** 2
  end
end

class Triangle < Shape
  def initialize(base, height)
    @base = base
    @height = height
  end

  def area
    0.5 * @base * @height
  end
end

shapes = [
  Square.new(4),
  Triangle.new(3, 6),
  Square.new(7),
  Triangle.new(8, 5)
]

shapes.each do |shape|
  puts "Area: #{shape.area}"
end

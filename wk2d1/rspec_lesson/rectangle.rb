class Rectangle

  attr_accessor :width, :height

  def intialize(width, height)
    @width = width
    @height = height
  end

  def area
  	@width * @height
  end

  def perimeter
  	2 * @width + 2 * @height
  end

end



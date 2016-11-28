class Parcel
  define_method(:initialize) do |height, width, length, weight|
    @height = height
    @width = width
    @length = length
    @weight = weight
  end

  define_method(:volume) do
  @height * @width * @length
  end

  define_method(:cost_to_ship) do
    @weight = @weight * 0.05
     @weight.*(volume())
  end
end

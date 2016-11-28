class Parcel
  define_method(:initialize) do | height, width, length|
    @height = height
    @width = width
    @length = length
    # @weight = weight
  end

  define_method(:volume) do | height, width, length |
    final_volume = height * width * length
    final_volume
  end

  # define_method(:cost_to_ship) do | weight |
  #
  # end
end

class Parcels
  define_method(:initialize) do |height, width, depth, weight|
    @height = height
    @width = width
    @depth = depth
    @weight = weight
  end

  define_method(:volume) do
    volume = @height * @width * @depth
  end

  define_method(:cost_to_ship) do |distance|
    cost_to_ship = (distance / 10) + ((volume + @weight)/2)
  end
end

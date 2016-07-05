require('pry')
class Parcels
  define_method(:initialize) do |height, width, depth, weight|
    @height = height
    @width = width
    @depth = depth
    @weight = weight
  end

  define_method(:volume) do
    @height = 5
    @width = 6
    @depth = 7
    @volume = @height * @width * @depth
  end

  define_method(:cost_to_ship) do
binding.pry
    @cost_to_ship = @volume * @weight
  end
end
